using System.ComponentModel.DataAnnotations;
using ExpressStore.Infrastructure.Models;

namespace ExpressStore.Modules.Core.Models
{public class Media : EntityBase
    {
        [StringLength(450)]
        public string Caption { get; set; }

        public int FileSize { get; set; }

        [StringLength(450)]
        public string FileName { get; set; }

        public MediaType MediaType { get; set; }
    }
}