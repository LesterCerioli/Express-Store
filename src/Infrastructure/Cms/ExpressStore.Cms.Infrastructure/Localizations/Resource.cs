using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Cms.Infrastructure.Models;

namespace ExpressStore.Cms.Infrastructure.Localizations
{
    public class Resource : EntityBase
    {
        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string Key { get; set; }

        public string Value { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        public string CultureId { get; set; }

        public Culture Culture { get; set; }
    }
}
