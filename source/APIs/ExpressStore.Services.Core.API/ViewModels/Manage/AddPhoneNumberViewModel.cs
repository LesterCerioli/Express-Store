using System.ComponentModel.DataAnnotations;

namespace ExpressStore.Services.Core.API.ViewModels.Manage;

public class AddPhoneNumberViewModel
{
    [Required(ErrorMessage = "The {0} field is required.")]
    [Phone]
    [Display(Name = "Phone number")]
    public string PhoneNumber { get; set; } 
}
