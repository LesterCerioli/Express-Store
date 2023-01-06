using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class CustomerGroupUserDapper : DommelEntityMap<CustomerGroupUser>
    {
        public CustomerGroupUserDapper()
        {
            ToTable("CustomerGroupUser");
            
            
        }

    }
}