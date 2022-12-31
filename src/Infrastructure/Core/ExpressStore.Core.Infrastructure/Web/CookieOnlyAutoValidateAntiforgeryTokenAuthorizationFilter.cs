using System;
using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Microsoft.Extensions.Logging;

//namespace ExpressStore.Core.Infrastructure.Web
//{
    //internal class CookieOnlyAutoValidateAntiforgeryTokenAuthorizationFilter
    //{
        //public CookieOnlyAutoValidateAntiforgeryTokenAuthorizationFilter(IAntiforgery antiforgery, ILoggerFactory loggerFactory)
//            : base(antiforgery, loggerFactory)
//        {
//        }

        //        protected override bool ShouldValidate(AuthorizationFilterContext context)
        //        {
        //            if (context == null)
        //            {
        //                throw new ArgumentNullException(nameof(context));
        //            }

        //            if (!context.HttpContext.Request.Path.StartsWithSegments("/api"))
        //            {
        //                return false;
        //            }

        //            if (context.HttpContext.User.Identity?.AuthenticationType != "Identity.Application")
        //            {
        //                return false;
        //            }

        //            return base.ShouldValidate(context);
        //        }
    //}
//}
