using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class UserDapper : DommelEntityMap<User>
    {
        public UserDapper()
        {
            ToTable("User");
            Map(p => p.Id).IsKey();
        }
        
    }
}