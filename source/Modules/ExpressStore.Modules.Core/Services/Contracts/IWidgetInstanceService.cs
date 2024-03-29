using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Services.Contracts
{
    public interface IWidgetInstanceService
    {
         IQueryable<WidgetInstance> GetPublished();
    }
}