using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using ExpressStore.Modules.Core.Data;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Extensions
{
    public class SimplRoleStore: RoleStore<Role, SimplDbContext, long, UserRole, IdentityRoleClaim<long>>
    {
        public SimplRoleStore(SimplDbContext context) : base(context)
        {
        }
    }
}
