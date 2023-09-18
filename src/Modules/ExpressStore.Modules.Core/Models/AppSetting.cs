using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class AppSetting : Entity, IAggregateRoot
    {
        public AppSetting(string? value, string? module, bool? isVisibleInCommonSettingPage)
        {
            Value = value;
            Module = module;
            IsVisibleInCommonSettingPage = isVisibleInCommonSettingPage;
        }

        [Required(ErrorMessage = "The {0} field is required.")]
        [MaxLength(450)]
        public string? Value { get; private set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [MaxLength(450)]
        public string? Module { get; private set; }

        public bool? IsVisibleInCommonSettingPage { get; private set; }
    }
}
