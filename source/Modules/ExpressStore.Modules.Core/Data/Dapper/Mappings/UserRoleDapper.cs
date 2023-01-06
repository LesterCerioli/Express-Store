using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class UserRoleDapper : DommelEntityMap<UserRole>
    {
        public UserRoleDapper()
        {
            ToTable("UserRole");
            
        }

    }
}