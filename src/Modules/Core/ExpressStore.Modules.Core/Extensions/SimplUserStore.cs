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
