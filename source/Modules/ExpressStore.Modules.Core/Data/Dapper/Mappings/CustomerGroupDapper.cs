using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class CustomerGroupDapper : DommelEntityMap<CustomerGroup>
    {
        public CustomerGroupDapper()
        {
            ToTable("CustomerGroup");
            Map(p => p.Id).IsKey();

        }
    }
}