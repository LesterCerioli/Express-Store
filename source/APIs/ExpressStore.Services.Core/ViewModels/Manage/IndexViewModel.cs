﻿using Microsoft.AspNetCore.Identity;

namespace ExpressStore.Services.Core.ViewModels.Manage
{
    public class IndexViewModel
    {
        public bool HasPassword { get; set; }

        public IList<UserLoginInfo> Logins { get; set; }

        public string PhoneNumber { get; set; }

        public bool TwoFactor { get; set; }

        public bool BrowserRemembered { get; set; }

        public string FullName { get; set; }

        public string Email { get; set; }
    }
}
