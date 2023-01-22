using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ExpressStore.Infrastructure.Data;
using ExpressStore.Modules.Core.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ExpressStore.Services.Core.API.Controllers
{
    [Area("Core")]
    [Authorize(Roles = "admin")]
    [Route("api/entities")]
    public class EntityApiController : ControllerBase
    {
        private IRepository<Entity> _entityRepository;

        public EntityApiController(IRepository<Entity> entityRepository)
        {
            _entityRepository = entityRepository;
        }

        [HttpGet]
        public IActionResult Get(string entityTypeId, string name)
        {
            var query = _entityRepository.Query().Where(x => x.EntityType.IsMenuable);
            if (!string.IsNullOrWhiteSpace(entityTypeId))
            {
                query = query.Where(x => x.EntityTypeId == entityTypeId);
            }

            if (!string.IsNullOrWhiteSpace(name))
            {
                query = query.Where(x => x.Name.Contains(name));
            }

            var entities = query.Select(x => new
            {
                Id = x.Id,
                Name = x.Name,
                Slug = x.Slug,
                EntityTypeId = x.EntityTypeId,
                EntityTypeName = x.EntityType.Name
            });

            return Ok(entities);
        }
        
    }
}
