using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class Widget : Entity, IAggregateRoot
    {
        public Widget(string name, string viewComponentName,
            string createUrl, string editUrl, bool isPublished)
        {
            Name = name;
            ViewComponentName = viewComponentName;
            CreateUrl = createUrl;
            EditUrl = editUrl;
            CreatedOn = DateTimeOffset.Now;
            IsPublished = isPublished;
        }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? Name { get; private set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? ViewComponentName { get; private set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? CreateUrl { get; private set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? EditUrl { get; private set; }

        public DateTimeOffset? CreatedOn { get; private set; }
        public bool? IsPublished { get; set; }
    }
}
