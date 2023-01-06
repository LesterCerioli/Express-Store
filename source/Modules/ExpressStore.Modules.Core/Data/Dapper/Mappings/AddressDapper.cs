using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class AddressDapper : DommelEntityMap<Address>
    {
        public AddressDapper()
        {
            ToTable("Address");
            Map(p => p.Id).IsKey();
        }

        

    }
}