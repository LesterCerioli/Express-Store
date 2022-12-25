using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Cms.Infrastructure.Models;

namespace ExpressStore.Modules.Cms.Models
{
    public class UserAddress : EntityBase
    {
        public long UserId { get; set; }

        public User User { get; set; }

        public long AddressId { get; set; }

        public Address Address { get; set; }

        public AddressType AddressType { get; set; }

        public DateTimeOffset? LastUsedOn { get; set; }
    }
}
