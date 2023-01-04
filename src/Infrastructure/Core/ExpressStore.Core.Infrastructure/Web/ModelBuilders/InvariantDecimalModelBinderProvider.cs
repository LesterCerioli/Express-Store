﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.Extensions.Logging;

namespace ExpressStore.Core.Infrastructure.Web.ModelBuilders
{
    public class InvariantDecimalModelBinderProvider : IModelBinderProvider
    {
        public IModelBinder GetBinder(ModelBinderProviderContext context)
        {
            if (context == null) throw new ArgumentNullException(nameof(context));

            if (!context.Metadata.IsComplexType && (context.Metadata.ModelType == typeof(decimal) || context.Metadata.ModelType == typeof(decimal?)))
            {
                var loggerFactory = (ILoggerFactory)context.Services.GetService(typeof(ILoggerFactory));
                return new InvariantDecimalModelBinder(context.Metadata.ModelType, loggerFactory);
            }

            return null;
        }
    }
}
