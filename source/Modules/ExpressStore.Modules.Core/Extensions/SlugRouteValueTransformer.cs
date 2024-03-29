﻿using ExpressStore.Infrastructure.Data;
using ExpressStore.Modules.Core.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Routing;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Extensions
{
    public class SlugRouteValueTransformer : DynamicRouteValueTransformer
    {
        private readonly IRepository<Entity> _entityRepository;

        public SlugRouteValueTransformer(IRepository<Entity> entityRepository)
        {
            _entityRepository = entityRepository;
        }

        public override async ValueTask<RouteValueDictionary> TransformAsync(HttpContext httpContext, RouteValueDictionary values)
        {
            var requestPath = httpContext.Request.Path.Value;

            if (!string.IsNullOrEmpty(requestPath) && requestPath[0] == '/')
            {
                // Trim the leading slash
                requestPath = requestPath.Substring(1);
            }

            var entity = await _entityRepository
                .Query()
                .Include(x => x.EntityType)
                .FirstOrDefaultAsync(x => x.Slug == requestPath);

            if (entity == null)
            {
                return null;
            }

            return new RouteValueDictionary
            {
                { "area", entity.EntityType.AreaName },
                { "controller", entity.EntityType.RoutingController },
                { "action", entity.EntityType.RoutingAction },
                { "id", entity.EntityId }
            };
        }
    }
}

