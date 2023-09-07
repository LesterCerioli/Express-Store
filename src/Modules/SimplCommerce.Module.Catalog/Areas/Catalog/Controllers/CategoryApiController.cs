﻿using System;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Net.Http.Headers;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Infrastructure.Web.SmartTable;
using SimplCommerce.Module.Catalog.Areas.Catalog.ViewModels;
using SimplCommerce.Module.Catalog.Models;
using SimplCommerce.Module.Catalog.Services;
using SimplCommerce.Module.Core.Models;
using SimplCommerce.Module.Core.Services;

namespace SimplCommerce.Module.Catalog.Areas.Catalog.Controllers
{
    [Area("Catalog")]
    [Authorize(Roles = "admin, vendor")]
    [Route("api/categories")]
    public class CategoryApiController : Controller
    {
        private readonly IRepository<Category> _categoryRepository;
        private readonly IRepository<ProductCategory> _productCategoryRepository;
        private readonly ICategoryService _categoryService;
        private readonly IMediaService _mediaService;

        public CategoryApiController(IRepository<Category> categoryRepository, IRepository<ProductCategory> productCategoryRepository, ICategoryService categoryService, IMediaService mediaService)
        {
            _categoryRepository = categoryRepository;
            _productCategoryRepository = productCategoryRepository;
            _categoryService = categoryService;
            _mediaService = mediaService;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var gridData = await _categoryService.GetAll();
            return Json(gridData);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> Get(long id)
        {
            var category = await _categoryRepository.Query().Include(x => x.ThumbnailImage).FirstOrDefaultAsync(x => x.Id == id);
            var model = new CategoryForm
            {
                Id = category.Id,
                Name = category.Name,
                Slug = category.Slug,
                MetaTitle = category.MetaTitle,
                MetaKeywords = category.MetaKeywords,
                MetaDescription = category.MetaDescription,
                DisplayOrder = category.DisplayOrder,
                Description = category.Description,
                ParentId = category.ParentId,
                IncludeInMenu = category.IncludeInMenu,
                IsPublished = category.IsPublished,
                ThumbnailImageUrl = _mediaService.GetThumbnailUrl(category.ThumbnailImage),
            };

            return Json(model);
        }

        [HttpPost]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Post(CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = new Category
                {
                    Name = model.Name,
                    Slug = model.Slug,
                    MetaTitle = model.MetaTitle,
                    MetaKeywords = model.MetaKeywords,
                    MetaDescription = model.MetaDescription,
                    DisplayOrder = model.DisplayOrder,
                    Description = model.Description,
                    ParentId = model.ParentId,
                    IncludeInMenu = model.IncludeInMenu,
                    IsPublished = model.IsPublished
                };

                await SaveCategoryImage(category, model);
                await _categoryService.Create(category);
                return CreatedAtAction(nameof(Get), new { id = category.Id }, null);
            }

            return BadRequest(ModelState);
        }

        [HttpPut("{id}")]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Put(long id, CategoryForm model)
        {
            if (ModelState.IsValid)
            {
                var category = await _categoryRepository.Query().FirstOrDefaultAsync(x => x.Id == id);
                if(category == null)
                {
                    return NotFound();
                }

                category.Name = model.Name;
                category.Slug = model.Slug;
                category.MetaTitle = model.MetaTitle;
                category.MetaKeywords = model.MetaKeywords;
                category.MetaDescription = model.MetaDescription;
                category.Description = model.Description;
                category.DisplayOrder = model.DisplayOrder;
                category.ParentId = model.ParentId;
                category.IncludeInMenu = model.IncludeInMenu;
                category.IsPublished = model.IsPublished;

                if (category.ParentId.HasValue && await HaveCircularNesting(category.Id, category.ParentId.Value))
                {
                    ModelState.AddModelError("ParentId", "Parent category cannot be itself children");
                    return BadRequest(ModelState);
                }

                await SaveCategoryImage(category, model);
                await _categoryService.Update(category);

                return Accepted();
            }

            return BadRequest(ModelState);
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> Delete(long id)
        {
            var category = _categoryRepository.Query().Include(x => x.Children).FirstOrDefault(x => x.Id == id);
            if (category == null)
            {
                return NotFound();
            }

            if (category.Children.Any(x => !x.IsDeleted))
            {
                return BadRequest(new { Error = "Please make sure this category contains no children" });
            }

            await _categoryService.Delete(category);
            return NoContent();
        }

        [HttpPost("{id}/products")]
        public IActionResult GetProducts(long id, [FromBody] SmartTableParam param)
        {
            var query = _productCategoryRepository.Query().Include(x => x.Product)
                .Where(x => x.CategoryId == id && !x.Product.IsDeleted && x.Product.IsVisibleIndividually);

            if (param.Search.PredicateObject != null)
            {
                dynamic search = param.Search.PredicateObject;
                if (search.Name != null)
                {
                    string name = search.Name;
                    query = query.Where(x => x.Product.Name.Contains(name));
                }

                if (search.IsPublished != null)
                {
                    bool isPublished = search.IsPublished;
                    query = query.Where(x => x.Product.IsPublished == isPublished);
                }
            }

            var gridData = query.ToSmartTableResult(
                param,
                x => new
                {
                    Id = x.Id,
                    ProductName = x.Product.Name,
                    IsFeaturedProduct = x.IsFeaturedProduct,
                    DisplayOrder = x.DisplayOrder,
                    IsProductPublished = x.Product.IsPublished
                });

            return Json(gridData);
        }

        [HttpPut("update-product/{id}")]
        public async Task<IActionResult> UpdateProduct(long id, [FromBody] ProductCategoryForm model)
        {
            var productCategory = await _productCategoryRepository.Query().FirstOrDefaultAsync(x => x.Id == id);
            if(productCategory == null)
            {
                return NotFound();
            }

            productCategory.IsFeaturedProduct = model.IsFeaturedProduct;
            productCategory.DisplayOrder = model.DisplayOrder;

            await _productCategoryRepository.SaveChangesAsync();
            return Accepted();
        }

        private async Task SaveCategoryImage(Category category, CategoryForm model)
        {
            if (model.ThumbnailImage != null)
            {
                var fileName = await SaveFile(model.ThumbnailImage);
                if (category.ThumbnailImage != null)
                {
                    category.ThumbnailImage.FileName = fileName;
                }
                else
                {
                    category.ThumbnailImage = new Media { FileName = fileName };
                }
            }
        }

        private async Task<string> SaveFile(IFormFile file)
        {
            var originalFileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Value.Trim('"');
            var fileName = $"{Guid.NewGuid()}{Path.GetExtension(originalFileName)}";
            await _mediaService.SaveMediaAsync(file.OpenReadStream(), fileName, file.ContentType);
            return fileName;
        }

        private async Task<bool> HaveCircularNesting(long childId, long parentId)
        {
            var category = await _categoryRepository.Query().FirstOrDefaultAsync(x => x.Id == parentId);
            var parentCategoryId = category.ParentId;
            while (parentCategoryId.HasValue)
            {
                if(parentCategoryId.Value == childId)
                {
                    return true;
                }

                var parentCategory = await _categoryRepository.Query().FirstAsync(x => x.Id == parentCategoryId);
                parentCategoryId = parentCategory.ParentId;
            }

            return false;
        }
    }
}
