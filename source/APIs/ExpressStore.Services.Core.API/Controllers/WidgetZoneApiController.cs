using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ExpressStore.Services.Core.API.Controllers
{
    [ApiController]
    [Area("Core")]
    [Authorize(Roles = "admin")]
    [Route("api/widget-zone")]
    public class WidgetZoneApiController : ControllerBase
    {
        private readonly IRepository<WidgetZone> _widgetZoneRespository;

        public WidgetZoneApiController(IRepository<WidgetZone> widgetZoneRespository)
        {
            _widgetZoneRespository = widgetZoneRespository;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var widgetZones = await _widgetZoneRespository.Query().Select(x => new
            {
                Id = x.Id,
                Name = x.Name,
                Description = x.Description
            }).ToListAsync();

            return Json(widgetZones);
        }
    }
}
