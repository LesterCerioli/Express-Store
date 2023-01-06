using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class VendorDapper : DommelEntityMap<Vendor>
    {
        public VendorDapper()
        {
            ToTable("Vendor");
            Map(p => p.Id).IsKey();
        }
    }
}