using System.ComponentModel.DataAnnotations;

namespace ExpressStore.Services.Core.API.ViewModels.Manage;

public class UserInfoVm
{
    [Required(ErrorMessage = "The {0} field is required.")]
    public string FullName { get; set; }

    [Required(ErrorMessage = "The {0} field is required.")]
    public string Email { get; set; } 
}
