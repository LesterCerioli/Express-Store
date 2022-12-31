using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Core.Infrastructure.Modules
{
    public interface IModuleConfigurationManager
    {
        IEnumerable<ModuleInfo> GetModules();
    }
}
