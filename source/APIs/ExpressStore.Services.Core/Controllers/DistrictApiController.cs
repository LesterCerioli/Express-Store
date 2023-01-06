using ExpressStore.Infrastructure.Data;
using ExpressStore.Modules.Core.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ExpressStore.Services.Core.Controllers
{
    [Area("Core")]
    [Route("api/districts")]
    public class DistrictApiController : Controller
    {
        private readonly IRepository<District> _districtRepository;

        public DistrictApiController(IRepository<District> districtRepository)
        {
            _districtRepository = districtRepository;
        }

        [HttpGet("/api/states-provinces/{stateOrProvinceId}/districts")]
        public async Task<IActionResult> GetDistricts(long stateOrProvinceId)
        {
            var districts = await _districtRepository
                .Query()
                .Where(x => x.StateOrProvinceId == stateOrProvinceId)
                .OrderBy(x => x.Name)
                .Select(x => new
                {
                    x.Id,
                    x.Name
                }).ToListAsync();

            return Json(districts);
        }
    }
}
