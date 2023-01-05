namespace ExpressStore.Modules.Core.Extensions
{
    public class SimplSignInManager<TUser> : SignInManager<TUser> where TUser : class
    {
        private readonly IMediator _mediator;

        public SimplSignInManager(UserManager<TUser> userManager,
            IHttpContextAccessor contextAccessor,
            IUserClaimsPrincipalFactory<TUser> claimsFactory,
            IOptions<IdentityOptions> optionsAccessor,
            ILogger<SignInManager<TUser>> logger,
            IAuthenticationSchemeProvider schemes,
            IUserConfirmation<TUser> confirmation,
            IMediator mediator)
            : base(userManager, contextAccessor, claimsFactory, optionsAccessor, logger, schemes, confirmation)
        {
            _mediator = mediator;
        }

        public override async Task SignInWithClaimsAsync(TUser user, AuthenticationProperties authenticationProperties, IEnumerable<Claim> additionalClaims)
        {
            await base.SignInWithClaimsAsync(user, authenticationProperties, additionalClaims);
            var userId = await UserManager.GetUserIdAsync(user);
            await _mediator.Publish(new UserSignedIn { UserId = long.Parse(userId) });
        }
        
    }
}
