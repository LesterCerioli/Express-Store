using System.Threading.Tasks;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Extensions
{
    public interface IWorkContext
    {
        Task<User> GetCurrentUser();
         
    }
}
