using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class CityDapper : DommelEntityMap<City>
    {
        public CityDapper()
        {
            ToTable("City");
            Map(p => p.Id).IsKey();
        }

    }
}