using System.ComponentModel.DataAnnotations;

namespace ExpressStore.Services.Core.API.ViewModels.Account;

public class ExternalLoginConfirmationViewModel
{
    [Required(ErrorMessage = "The {0} field is required.")]
    [EmailAddress]
    public string Email { get; set; }

    [Required(ErrorMessage = "The {0} field is required.")]
    [Display(Name = "Name")]
    public string FullName { get; set; } 
}
