using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class WidgetZoneDapper : DommelEntityMap<WidgetZone>
    {
        public WidgetZoneDapper()
        {
            ToTable("WidgetZone");
            Map(p => p.Id).IsKey();
        }
    }
}