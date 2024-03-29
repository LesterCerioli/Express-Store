﻿using System.ComponentModel.DataAnnotations;

namespace ExpressStore.Services.Core.API.ViewModels.Account;

public class ForgotPasswordViewModel
{
    [Required(ErrorMessage = "The {0} field is required.")]
    [EmailAddress]
    public string Email { get; set; } 
}
