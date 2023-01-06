using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class WidgetInstanceDapper : DommelEntityMap<WidgetInstance>
    {
        public WidgetInstanceDapper()
        {
            ToTable("WidgetInstance");
            Map(p => p.Id).IsKey();
        }
    }
}