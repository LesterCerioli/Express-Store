﻿using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SimplCommerce.Infrastructure.Data;
using SimplCommerce.Module.ShippingTableRate.Areas.ShippingTableRate.ViewModels;
using SimplCommerce.Module.ShippingTableRate.Models;

namespace SimplCommerce.Module.ShippingTableRate.Areas.ShippingTableRate.Controllers
{
    [Area("ShippingTableRate")]
    [Authorize(Roles = "admin")]
    [Route("api/shippings/table-rate/price-destinations")]
    public class PriceAndDestinationApiController : Controller
    {
        private readonly IRepository<PriceAndDestination> _priceAndDestinationRepository;

        public PriceAndDestinationApiController(IRepository<PriceAndDestination> priceAndDestinationRepository)
        {
            _priceAndDestinationRepository = priceAndDestinationRepository;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var items = await _priceAndDestinationRepository.Query()
                .Select(x => new PriceAndDestinationForm
                {
                    Id = x.Id,
                    CountryId = x.CountryId,
                    CountryName = x.Country.Name,
                    StateOrProvinceId = x.StateOrProvinceId,
                    StateOrProvinceName = x.StateOrProvince.Name,
                    DistrictId = x.DistrictId,
                    DistrictName = x.District.Name,
                    ZipCode = x.ZipCode,
                    MinOrderSubtotal = x.MinOrderSubtotal,
                    ShippingPrice = x.ShippingPrice,
                    Note = x.Note
                }).ToListAsync();

            return Ok(items);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> Get(long id)
        {
            var returnModel = await _priceAndDestinationRepository.Query().Where(x => x.Id == id).Select(x => new PriceAndDestinationForm
            {
                Id = x.Id,
                CountryId = x.CountryId,
                CountryName = x.Country.Name,
                StateOrProvinceId = x.StateOrProvinceId,
                StateOrProvinceName = x.StateOrProvince.Name,
                DistrictId = x.DistrictId,
                DistrictName = x.District.Name,
                ZipCode = x.ZipCode,
                MinOrderSubtotal = x.MinOrderSubtotal,
                ShippingPrice = x.ShippingPrice,
                Note = x.Note
            }).FirstOrDefaultAsync();
            return Ok(returnModel);
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody] PriceAndDestinationForm model)
        {
            if (ModelState.IsValid)
            {
                var priceAndDestination = new PriceAndDestination
                {
                    CountryId = model.CountryId,
                    StateOrProvinceId = model.StateOrProvinceId,
                    DistrictId = model.DistrictId,
                    ZipCode = model.ZipCode,
                    MinOrderSubtotal = model.MinOrderSubtotal,
                    ShippingPrice = model.ShippingPrice,
                    Note = model.Note
                };

                _priceAndDestinationRepository.Add(priceAndDestination);
                await _priceAndDestinationRepository.SaveChangesAsync();
                return await Get(priceAndDestination.Id);
            }

            return BadRequest(ModelState);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(long id, [FromBody] PriceAndDestinationForm model)
        {
            if (ModelState.IsValid)
            {
                var priceAndDestination = await _priceAndDestinationRepository.Query().FirstOrDefaultAsync(x => x.Id == id);
                if (priceAndDestination == null)
                {
                    return NotFound();
                }

                priceAndDestination.CountryId = model.CountryId;
                priceAndDestination.StateOrProvinceId = model.StateOrProvinceId;
                priceAndDestination.DistrictId = model.DistrictId;
                priceAndDestination.ZipCode = model.ZipCode;
                priceAndDestination.ShippingPrice = model.ShippingPrice;
                priceAndDestination.MinOrderSubtotal = model.MinOrderSubtotal;
                priceAndDestination.Note = model.Note;
                await _priceAndDestinationRepository.SaveChangesAsync();
                return await Get(priceAndDestination.Id);
            }

            return BadRequest(ModelState);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(long id)
        {
            var priceAndDestination = await _priceAndDestinationRepository.Query().FirstOrDefaultAsync(x => x.Id == id);
            if (priceAndDestination == null)
            {
                return NotFound();
            }

            _priceAndDestinationRepository.Remove(priceAndDestination);
            await _priceAndDestinationRepository.SaveChangesAsync();
            return NoContent();
        }
    }
}
