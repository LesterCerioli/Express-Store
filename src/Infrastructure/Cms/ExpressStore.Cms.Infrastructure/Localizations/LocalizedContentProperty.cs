using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Cms.Infrastructure.Models;

namespace ExpressStore.Cms.Infrastructure.Localizations
{
    public class LocalizedContentProperty : EntityBase
    {
        public long EntityId { get; set; }

        [StringLength(450)]
        public string EntityType { get; set; }

        [Required]
        public string CultureId { get; set; }

        public Culture Culture { get; set; }

        [Required]
        [StringLength(450)]
        public string ProperyName { get; set; }

        public string Value { get; set; }
    }
}
