using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class RoleDapper : DommelEntityMap<Role>
    {
        public RoleDapper()
        {
            ToTable("Role");
            Map(p => p.Id).IsKey();
        }

    }
}