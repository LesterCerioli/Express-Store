using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class WidgetDapper : DommelEntityMap<Widget>
    {
        public WidgetDapper()
        {
            ToTable("Widget");
            Map(p => p.Id).IsKey();
        }
    }
}