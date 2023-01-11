using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ExpressStore.Services.Core.API.Controllers
{
    [ApiController]
    [Areas("Core")]
    [Authorize(Roles = "admin")]
    [Route("api/widgets")]
    public class WidgetApiController : ControllerBase
    {
        private readonly IRepositoryWithTypedId<Widget, string> _widgetRespository;

        public WidgetApiController(IRepositoryWithTypedId<Widget, string> widgetRespository)
        {
            _widgetRespository = widgetRespository;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var widgets = await _widgetRespository.Query().Select(x => new
            {
                Id = x.Id,
                Name = x.Name,
                CreateUrl = x.CreateUrl
            }).ToListAsync();

            return Json(widgets);
        }
        
    }
}