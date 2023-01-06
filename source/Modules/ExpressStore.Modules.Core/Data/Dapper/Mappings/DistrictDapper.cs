using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class DistrictDapper : DommelEntityMap<District>
    {
        public DistrictDapper()
        {
            ToTable("District");
            Map(p => p.Id).IsKey();
        }
        
    }
}