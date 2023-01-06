using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Infrastructure.Tasks.Scheduling
{
    public static class SchedulerTasksExtensions
    {
        public static IServiceCollection AddScheduler(this IServiceCollection services)
            => services.AddSingleton<IHostedService, SchedulerBackgroundService>();

        public static IServiceCollection AddScheduler(this IServiceCollection services, EventHandler<UnobservedTaskExceptionEventArgs> unobservedTaskExceptionHandler)
            => services.AddSingleton<IHostedService, SchedulerBackgroundService>(serviceProvider =>
            {
                var instance = new SchedulerBackgroundService(serviceProvider.GetServices<IScheduledTask>());
                instance.UnobservedTaskException += unobservedTaskExceptionHandler;
                return instance;
            });
    }
}
