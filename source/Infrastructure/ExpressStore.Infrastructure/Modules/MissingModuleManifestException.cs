using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Infrastructure.Modules
{
    public class MissingModuleManifestException : Exception
    {
        public string ModuleName { get; }

        public MissingModuleManifestException()
        {

        }

        public MissingModuleManifestException(string message)
            : base(message)
        {

        }

        public MissingModuleManifestException(string message, string moduleName)
            : this(message)
        {
            ModuleName = moduleName;
        }
    }
}
