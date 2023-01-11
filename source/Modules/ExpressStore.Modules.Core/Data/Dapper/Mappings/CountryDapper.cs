using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class CountryDapper : DommelEntityMap<Country>
    {
        public CountryDapper()
        {
            ToTable("Country");
            Map(p => p.Id).IsKey();
        }

    }
}