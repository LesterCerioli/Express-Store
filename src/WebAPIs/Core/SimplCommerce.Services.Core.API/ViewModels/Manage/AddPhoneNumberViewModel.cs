using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace SimplCommerce.Services.Core.API.ViewModels.Manage
{
    public class AddPhoneNumberViewModel
    {
        [Required(ErrorMessage = "The {0} field is required.")]
        [Phone]
        [Display(Name = "Phone number")]
        public string PhoneNumber { get; set; }
    }
}
