using System.ComponentModel.DataAnnotations;
using ExpressStore.Cms.Infrastructure.Models;

namespace ExpressStore.Modules.Cms.Models
{
    public class Menu : EntityBase
    {
        public Menu()
        {

        }

        public Menu(long id)
        {
            Id = id;
        }

        [Required(ErrorMessage = "The {0} field is required")]
        public string Name { get; set; }

        public bool IsPublished { get; set; }

        public bool IsSystem { get; set; }

        public IList<MenuItem> MenuItems { get; protected set; } = new List<MenuItem>();

    }
}
