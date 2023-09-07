﻿using MediatR;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;
using SimplCommerce.Infrastructure;
using SimplCommerce.Infrastructure.Modules;
using SimplCommerce.Module.Cms.Events;
using SimplCommerce.Module.Cms.Services;
using SimplCommerce.Module.Core.Events;

namespace SimplCommerce.Module.Cms
{
    public class ModuleInitializer : IModuleInitializer
    {
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<INotificationHandler<EntityDeleting>, EntityDeletingHandler>();
            services.AddTransient<IPageService, PageService>();

            GlobalConfiguration.RegisterAngularModule("simplAdmin.cms");
        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {

        }
    }
}
