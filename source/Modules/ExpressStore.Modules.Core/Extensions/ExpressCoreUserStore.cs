using ExpressStore.Modules.Core.Data.EFCore;
using ExpressStore.Modules.Core.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Extensions
{
    public class ExpressCoreUserStore : UserStore<User, Role, CoreDbContext, long, IdentityUserClaim<long>, UserRole,
        IdentityUserLogin<long>, IdentityUserToken<long>, IdentityRoleClaim<long>>
    {
        public ExpressCoreUserStore(CoreDbContext context, IdentityErrorDescriber describer) : base(context, describer)
        {
        }

    }
}
