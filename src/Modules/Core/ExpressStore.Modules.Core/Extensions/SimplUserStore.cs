using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using SimplCommerce.Module.Core.Data;
using ExpressStore.Modules.Core.Models;

namespace ExpressStore.Modules.Core.Extensions
{
    public class SimplUserStore : UserStore<User, Role, SimplDbContext, long, IdentityUserClaim<long>, UserRole,
        IdentityUserLogin<long>,IdentityUserToken<long>, IdentityRoleClaim<long>>
    {
        public SimplUserStore(SimplDbContext context, IdentityErrorDescriber describer) : base(context, describer)
        {
            
        }
        
    }
}
