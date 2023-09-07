﻿using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ViewEngines;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace SimplCommerce.Infrastructure.Web
{
    public static class ViewComponentExtensions
    {
        public static string GetViewPath(this ViewComponent viewComponent, string viewName = "Default")
        {
            var theme = "";
            viewComponent.HttpContext.Request.Cookies.TryGetValue("theme", out string previewingTheme);
            if (!string.IsNullOrWhiteSpace(previewingTheme))
            {
                theme = previewingTheme;
            }
            else
            {
                var config = viewComponent.HttpContext.RequestServices.GetService<IConfiguration>();
                theme = config["Theme"];
            }

            var viewPath = $"/Areas/{viewComponent.GetType().Assembly.GetName().Name.Split('.').Last()}/Views/Shared/Components/{viewComponent.ViewComponentContext.ViewComponentDescriptor.ShortName}/{viewName}.cshtml";
            if (!string.IsNullOrWhiteSpace(theme) && !string.Equals(theme, "Generic", System.StringComparison.InvariantCultureIgnoreCase))
            {
                var themeViewPath = $"/Themes/{theme}{viewPath}";
                var viewEngine = viewComponent.ViewContext.HttpContext.RequestServices.GetRequiredService<ICompositeViewEngine>();
                var result = viewEngine.GetView("", themeViewPath, isMainPage: false);
                if (result.Success)
                {
                    viewPath = themeViewPath;
                }
            }

            return viewPath;
        }
    }
}
