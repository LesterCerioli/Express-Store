using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class UserAddressDapper : DommelEntityMap<UserAddress>
    {
        public UserAddressDapper()
        {
            ToTable("UserAddress");
            
        }
        
    }
}