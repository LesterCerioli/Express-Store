﻿using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SimplCommerce.Module.SampleData.Areas.SampleData.ViewModels;
using SimplCommerce.Module.SampleData.Services;

namespace SimplCommerce.Module.SampleData.Areas.SampleData.Controllers
{
    [Area("SampleData")]
    [ApiExplorerSettings(IgnoreApi = true)]
    public class SampleDataController : Controller
    {
        private readonly ISampleDataService _sampleDataService;

        public SampleDataController(ISampleDataService sampleDataService)
        {
            _sampleDataService = sampleDataService;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> ResetToSample(SampleDataOption model)
        {
            await _sampleDataService.ResetToSampleData(model);
            return Redirect("~/");
        }
    }
}
