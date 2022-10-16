﻿using Microsoft.AspNetCore.Mvc.Rendering;

namespace SimplCommerce.Services.Core.API.ViewModels.Manage
{
    public class ConfigureTwoFactorViewModel
    {
        public string SelectedProvider { get; set; }

        public ICollection<SelectListItem> Providers { get; set; }
    }
}
