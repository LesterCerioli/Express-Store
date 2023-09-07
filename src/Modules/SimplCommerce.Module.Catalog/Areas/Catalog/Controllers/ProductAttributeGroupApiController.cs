﻿using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.Catalog.Areas.Catalog.ViewModels;
using SimplCommerce.Module.Catalog.Models;

namespace SimplCommerce.Module.Catalog.Areas.Catalog.Controllers
{
    [Area("Catalog")]
    [Authorize(Roles = "admin, vendor")]
    [Route("api/product-attribute-groups")]
    public class ProductAttributeGroupApiController : Controller
    {
        private IRepository<ProductAttributeGroup> _productAttrGroupRepository;

        public ProductAttributeGroupApiController(IRepository<ProductAttributeGroup> productAttrGroupRepository)
        {
            _productAttrGroupRepository = productAttrGroupRepository;
        }

        [HttpGet]
        public IActionResult Get()
        {
            var attributeGroups = _productAttrGroupRepository
                .Query()
                .Select(x => new ProductAttributeGroupFormVm
                {
                    Id = x.Id,
                    Name = x.Name
                });

            return Json(attributeGroups);
        }

        [HttpGet("{id}")]
        public IActionResult Get(long id)
        {
            var productAttributeGroup = _productAttrGroupRepository.Query().FirstOrDefault(x => x.Id == id);
            var model = new ProductAttributeGroupFormVm
            {
                Id = productAttributeGroup.Id,
                Name = productAttributeGroup.Name
            };

            return Json(model);
        }

        [HttpPost]
        [Authorize(Roles = "admin")]
        public IActionResult Post([FromBody] ProductAttributeGroupFormVm model)
        {
            if (ModelState.IsValid)
            {
                var productAttributeGroup = new ProductAttributeGroup
                {
                    Name = model.Name
                };

                _productAttrGroupRepository.Add(productAttributeGroup);
                _productAttrGroupRepository.SaveChanges();

                return Ok();
            }
            return BadRequest(ModelState);
        }

        [HttpPut("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Put(long id, [FromBody] ProductAttributeGroupFormVm model)
        {
            if (ModelState.IsValid)
            {
                var productAttributeGroup = _productAttrGroupRepository.Query().FirstOrDefault(x => x.Id == id);
                productAttributeGroup.Name = model.Name;

                _productAttrGroupRepository.SaveChanges();

                return Ok();
            }

            return BadRequest(ModelState);
        }

        [HttpDelete("{id}")]
        [Authorize(Roles = "admin")]
        public IActionResult Delete(long id)
        {
            var productAttributeGroup = _productAttrGroupRepository.Query().FirstOrDefault(x => x.Id == id);
            if (productAttributeGroup == null)
            {
                return NotFound();
            }

            _productAttrGroupRepository.Remove(productAttributeGroup);
            return Json(true);
        }
    }
}
