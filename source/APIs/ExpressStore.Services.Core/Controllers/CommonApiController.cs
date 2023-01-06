using ExpressStore.Modules.Core.Services.Contracts;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Net.Http.Headers;

namespace ExpressStore.Services.Core.Controllers
{
    [Area("Core")]
    [Authorize(Roles = "admin")]
    [Route("api/common")]
    public class CommonApiController : Controller
    {
        private readonly IMediaService _mediaService;

        public CommonApiController(IMediaService mediaService)
        {
            _mediaService = mediaService;
        }

        [HttpPost("upload")]
        public async Task<IActionResult> UploadFile(IFormFile file)
        {
            var originalFileName = ContentDispositionHeaderValue.Parse(file.ContentDisposition).FileName.Value.Trim('"');
            var fileName = $"{Guid.NewGuid()}{Path.GetExtension(originalFileName)}";
            await _mediaService.SaveMediaAsync(file.OpenReadStream(), fileName, file.ContentType);

            return Ok(_mediaService.GetMediaUrl(fileName));
        }
    }
}
