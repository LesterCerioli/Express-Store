using ExpressStore.Modules.Core.Events;
using MediatR;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Extensions
{
    public class ExpressCoreSignInManager<TUser> : SignInManager<TUser> where TUser : class
    {
        private readonly IMediator _mediator;

        public ExpressCoreSignInManager(UserManager<TUser> userManager,
            IHttpContextAccessor contextAccessor,
            IUserClaimsPrincipalFactory<TUser> claimFactory,
            IOptions<IdentityOptions> optionsAccessor,
            ILogger<SignInManager<TUser>> logger,
            IAuthenticationSchemeProvider schemas,
            IUserConfirmation<TUser> confirmation,
            IMediator mediator)
            : base(userManager, contextAccessor, claimFactory, optionsAccessor, logger, schemas, confirmation)
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
