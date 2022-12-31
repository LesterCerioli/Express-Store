using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace ExpressStore.Core.Infrastructure.Web
{
    public static class HttpRequestExtentions
    {
        public static string GetFullHostingUrlRoot(this HttpRequest request)
        {
            return $"{request.Scheme}://{request.Host.Value}";
        }
    }
}
