using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Core.Infrastructure.Models;

namespace ExpressStore.Modules.Core.Models
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
