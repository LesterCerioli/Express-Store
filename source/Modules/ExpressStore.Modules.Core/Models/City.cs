using System.ComponentModel.DataAnnotations;
using ExpressStore.Infrastructure.Models;

namespace ExpressStore.Modules.Core.Models
{
 public class City : EntityBase
    {
        public City()
        {

        }

        public City(long id)
        {
            Id = id;
        }

        [StringLength(450)]
        public string StateOrProvinceId { get; set; }

        public StateOrProvince stateOrProvince { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string Name { get; set; }


    }
}
