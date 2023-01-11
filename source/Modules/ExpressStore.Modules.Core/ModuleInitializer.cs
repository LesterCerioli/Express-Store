using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Infrastructure.Modules;
using ExpressStore.Modules.Core.Extensions.Settings;
using ExpressStore.Modules.Core.Extensions;
using ExpressStore.Modules.Core.Services.Contracts;
using ExpressStore.Modules.Core.Services.Implementations;
using Microsoft.Extensions.DependencyInjection;
using ExpressStore.Infrastructure;

namespace ExpressStore.Modules.Core
{
    public class ModuleInitializer : IModuleInitializer
    {
        public void ConfigureServices(IServiceCollection serviceCollection)
        {
            serviceCollection.AddTransient<IEntityService, EntityService>();
            serviceCollection.AddTransient<IMediaService, MediaService>();
            serviceCollection.AddTransient<IThemeService, ThemeService>();
            serviceCollection.AddTransient<IWidgetInstanceService, WidgetInstanceService>();
            serviceCollection.AddScoped<IWorkContext, WorkContext>();
            serviceCollection.AddScoped<ISmsSender, SmsSender>();
            serviceCollection.AddSingleton<SettingDefinitionProvider>();
            serviceCollection.AddScoped<ISettingService, SettingService>();
            serviceCollection.AddScoped<ICurrencyService, CurrencyService>();

            GlobalConfiguration.RegisterAngularModule("simplAdmin.core");
        }
    }
}
