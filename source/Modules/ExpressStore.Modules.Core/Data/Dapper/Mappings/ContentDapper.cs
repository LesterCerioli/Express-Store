using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class ContentDapper : DommelEntityMap<Content>
    {
        public ContentDapper()
        {
            ToTable("Content");
            Map(p => p.Id).IsKey();

        }

    }
}