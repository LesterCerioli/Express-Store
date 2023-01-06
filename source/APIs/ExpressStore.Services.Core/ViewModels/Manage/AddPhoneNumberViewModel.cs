﻿using System.ComponentModel.DataAnnotations;
using System.Xml.Linq;

namespace ExpressStore.Services.Core.ViewModels.Manage
{
    public class AddPhoneNumberViewModel
    {
        [Required(ErrorMessage = "The {0} field is required.")]
        [Phone]
        [Display(Name = "Phone number")]
        public string PhoneNumber { get; set; }
    }
}
