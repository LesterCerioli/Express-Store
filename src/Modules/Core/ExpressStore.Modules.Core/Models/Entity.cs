using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Core.Infrastructure.Models;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace ExpressStore.Modules.Core.Models
{
    public class Entity : EntityBase
    {
        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string Slug { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string Name { get; set; }

        public long EntityId { get; set; }

        [StringLength(450)]
        public string EntityTypeId { get; set; }

        public EntityType EntityType { get; set; }
    }
}
