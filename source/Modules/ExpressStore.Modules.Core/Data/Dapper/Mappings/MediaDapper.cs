using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class MediaDapper : DommelEntityMap<Media>
    {
        public MediaDapper()
        {
            ToTable("Media");
            Map(p => p.Id).IsKey();
        }
        
    }
}