using System.ComponentModel.DataAnnotations;

namespace ExpressStore.Services.Core.API.ViewModels.Manage;

public class VerifyPhoneNumberViewModel
{
    [Required(ErrorMessage = "The {0} field is required.")]
    public string Code { get; set; }

    [Required(ErrorMessage = "The {0} field is required.")]
    [Phone]
    [Display(Name = "Phone number")]
    public string PhoneNumber { get; set; } 
}
