namespace ExpressStore.Modules.Core.Extensions
{
    public class SimplRoleStore : RoleStore<Role, SimplDbContext, long, UserRole, IdentityRoleClaim<long>>
    {
        public SimplRoleStore(SimplDbContext context) : base(context)
        {
        }
        
    }
}
