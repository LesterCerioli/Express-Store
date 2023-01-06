using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Infrastructure.Web
{
    public static class HttpRequestExtentions
    {
        public static string GetFullHostingUrlRoot(this HttpRequest request)
        {
            return $"{request.Scheme}://{request.Host.Value}";
        }
    }
}
