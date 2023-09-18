using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Modules.Core.ValueObjects;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class User : Entity, IAggregateRoot
    {
        private readonly List<Vendor> _vendors;

        public User(string? fullName, Email email, Cpf cpf, Vendor vendor, bool? isDeleted, DateTimeOffset? createdOn, DateTimeOffset? latestUpdatedOn, string? refreshTokenHash, string? culture, string? extensionData)
        {
            FullName = fullName;
            Email = email;
            Cpf = cpf;
            Vendor = vendor;
            IsDeleted = isDeleted;
            CreatedOn = createdOn;
            LatestUpdatedOn = latestUpdatedOn;
            RefreshTokenHash = refreshTokenHash;
            Culture = culture;
            ExtensionData = extensionData;
            CreatedOn = DateTimeOffset.Now;
            LatestUpdatedOn = DateTimeOffset.Now;
            _vendors = new List<Vendor>();
        }

        public const string SettingsDataKey = "Settings";

        public Guid UserGuid { get; set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? FullName { get; private set; }

        public Email Email { get; private set; }

        public Guid EmailId { get; set; }

        public Cpf Cpf { get; private set; }

        public Guid CpfId { get; set; }

        public Vendor Vendor { get; private set; }

        public bool? IsDeleted { get; private set; }

        public DateTimeOffset? CreatedOn { get; private set; }

        public DateTimeOffset? LatestUpdatedOn { get; private set; }

        [StringLength(450)]
        public string? RefreshTokenHash { get; private set; }

        [StringLength(450)]
        public string? Culture { get; private set; }
        public string? ExtensionData { get; private set; }

        public IReadOnlyCollection<Vendor> Vendors => _vendors.AsReadOnly();

        public Guid VendorId { get; private set; }

        public IList<UserRole> Roles { get; set; } = new List<UserRole>();
    }
}
