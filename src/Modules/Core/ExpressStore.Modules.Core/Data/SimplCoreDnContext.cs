using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Modules.Core.Models;
using Microsoft.AspNetCore.Identity;

namespace ExpressStore.Modules.Core.Data
{
    public class SimplCoreDnContext : IdentityDbContext<User, Role, long, IdentityUserClaim<long>, UserRole, IdentityUserLogin<long>, IdentityRoleClaim<long>, IdentityUserToken<long>>
    {
    }
}
