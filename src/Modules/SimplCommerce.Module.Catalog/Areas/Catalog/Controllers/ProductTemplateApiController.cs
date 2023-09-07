﻿using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.Catalog.Areas.Catalog.ViewModels;
using SimplCommerce.Module.Catalog.Data;
using SimplCommerce.Module.Catalog.Models;

namespace SimplCommerce.Module.Catalog.Areas.Catalog.Controllers
{
    [Area("Catalog")]
    [Authorize(Roles = "admin, vendor")]
    [Route("api/product-templates")]
    public class ProductTemplateApiController : Controller
    {
        private readonly IRepository<ProductTemplate> _productTemplateRepository;
        private readonly IRepository<ProductAttribute> _productAttributeRepository;
        private readonly IProductTemplateProductAttributeRepository _productTemplateProductAttributeRepository;

        public ProductTemplateApiController(IRepository<ProductTemplate> productTemplateRepository, IRepository<ProductAttribute> productAttributeRepository, IProductTemplateProductAttributeRepository productTemplateProductAttributeRepository)
        {
            _productTemplateRepository = productTemplateRepository;
            _productAttributeRepository = productAttributeRepository;
            _productTemplateProductAttributeRepository = productTemplateProductAttributeRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            var productTemplates = _productTemplateRepository
                .Query()
                .Select(x => new
                {
                    x.Id,
                    x.Name
                });

            return Json(productTemplates);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var productTemplate = _productTemplateRepository
                .Query()
                .Include(x => x.ProductAttributes).ThenInclude(x => x.ProductAttribute).ThenInclude(x => x.Group)
                .FirstOrDefault(x => x.Id == id);
            var model = new ProductTemplateFrom
            {
                Id = productTemplate.Id,
                Name = productTemplate.Name,
                Attributes = productTemplate.ProductAttributes.Select(
                    x => new ProductAttributeVm()
                    {
                        Id = x.ProductAttributeId,
                        Name = x.ProductAttribute.Name,
                        GroupName = x.ProductAttribute.Group.Name
                    }).ToList()
            };

            return Json(model);
        }

        [HttpPost]
        [Authorize(Roles = "admin")]
        public IActionResult Post([FromBody] ProductTemplateFrom model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var productTemplate = new ProductTemplate
            {
                Name = model.Name
            };

            foreach (var attributeVm in model.Attributes)
            {
                productTemplate.AddAttribute(attributeVm.Id);
            }

            _productTemplateRepository.Add(productTemplate);
            _productAttributeRepository.SaveChanges();

            return Ok();
        }

        [HttpPut("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Put(long id, [FromBody] ProductTemplateFrom model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var productTemplate = _productTemplateRepository
                .Query()
                .Include(x => x.ProductAttributes)
                .FirstOrDefault(x => x.Id == id);

            productTemplate.Name = model.Name;

            foreach (var attribute in model.Attributes)
            {
                if (productTemplate.ProductAttributes.Any(x => x.ProductAttributeId == attribute.Id))
                {
                    continue;
                }

                productTemplate.AddAttribute(attribute.Id);
            }

            var deletedAttributes = productTemplate.ProductAttributes.Where(attr => !model.Attributes.Select(x => x.Id).Contains(attr.ProductAttributeId));

            foreach (var deletedAttribute in deletedAttributes)
            {
                deletedAttribute.ProductTemplate = null;
                _productTemplateProductAttributeRepository.Remove(deletedAttribute);
            }

            _productAttributeRepository.SaveChanges();

            return Ok();
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Delete(long id)
        {
            var productTemplate = _productTemplateRepository.Query().FirstOrDefault(x => x.Id == id);
            if (productTemplate == null)
            {
                return NotFound();
            }

            _productTemplateRepository.Remove(productTemplate);
            _productAttributeRepository.SaveChanges();
            return Json(true);
        }
    }
}
