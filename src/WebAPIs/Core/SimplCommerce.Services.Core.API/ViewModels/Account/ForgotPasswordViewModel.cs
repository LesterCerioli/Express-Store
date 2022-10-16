using System.ComponentModel.DataAnnotations;

namespace SimplCommerce.Services.Core.API.ViewModels.Account
{
    public class ForgotPasswordViewModel
    {
        [Required(ErrorMessage = "The {0} field is required.")]
        [EmailAddress]
        public string Email { get; set; }
    }
}
