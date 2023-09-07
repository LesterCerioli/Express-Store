﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace SimplCommerce.Module.Core.Areas.Core.ViewModels
{
    public class UserAddressFormViewModel
    {
        public long Id { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        public string ContactName { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        public string Phone { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        public string AddressLine1 { get; set; }

        public string AddressLine2 { get; set; }

        public string ZipCode { get; set; }

        public string City { get; set; }

        public long StateOrProvinceId { get; set; }

        public long? DistrictId { get; set; }

        public string CountryId { get; set; }

        public IList<SelectListItem> StateOrProvinces { get; set; }

        public IList<SelectListItem> Districts { get; set; }

        public IList<SelectListItem> Countries { get; set; }

        public bool DisplayDistrict { get; set; } = true;

        public bool DisplayZipCode { get; set; } = true;

        public bool DisplayCity { get; set; } = true;
    }
}
