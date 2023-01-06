using ExpressStore.Modules.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Extensions
{
    public interface IWorkContext
    {
        Task<User> GetCurrentUser();
    }
}
