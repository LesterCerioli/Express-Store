using ExpressStore.Infrastructure.Data;
using ExpressStore.Modules.Core.Models;
using ExpressStore.Modules.Core.Services.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Services.Implementations
{
    public class WidgetInstanceService : IWidgetInstanceService
    {
        private IRepository<WidgetInstance> _widgetInstanceRepository;

        public WidgetInstanceService(IRepository<WidgetInstance> widgetInstanceRepository)
        {
            _widgetInstanceRepository = widgetInstanceRepository;
        }

        public IQueryable<WidgetInstance> GetPublished()
        {
            var now = DateTimeOffset.Now;
            return _widgetInstanceRepository.Query().Where(x =>
                x.PublishStart.HasValue && x.PublishStart < now
                && (!x.PublishEnd.HasValue || x.PublishEnd > now));
        }
    }
}
