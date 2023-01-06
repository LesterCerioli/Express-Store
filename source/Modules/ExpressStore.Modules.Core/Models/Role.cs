using ExpressStore.Infrastructure.Models;
using Microsoft.AspNetCore.Identity;

namespace ExpressStore.Modules.Core.Models
{
  public class Role : IdentityRole<long>, IEntityWithTypedId<long>
    {
        public IList<UserRole> Users { get; set; } = new List<UserRole>();
    }
}