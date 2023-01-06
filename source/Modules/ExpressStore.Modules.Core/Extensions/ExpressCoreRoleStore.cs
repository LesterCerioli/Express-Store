using ExpressStore.Modules.Core.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Modules.Core.Data.EFCore;

namespace ExpressStore.Modules.Core.Extensions
{
    public class ExpressCoreRoleStore : RoleStore<Role, CoreDbContext, long, UserRole, IdentityRoleClaim<long>>
    {
        public ExpressCoreRoleStore(CoreDbContext context) :base(context)
        {

        }
    }
}
