using Dapper.FluentMap.Dommel.Mapping;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Data.Dapper.Mappings
{
    public class StateOrProvinceDapper : DommelEntityMap<StateOrProvince>
    {
        public StateOrProvinceDapper()
        {
            ToTable("StateOrProvince");
            Map(p => p.Id).IsKey();
        }
        
    }
}