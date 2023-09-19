using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class UserAddress : Entity, IAggregateRoot
    {
        private IList<User> _users;

        private IList<Address> _addresss;

        public UserAddress(DateTimeOffset? LastUsedOn, AddressType AddressType)
        {
            _users = new List<User>();
            _addresss = new List<Address>();
        }

        public IReadOnlyCollection<User> Users { get { return _users.ToArray(); } }

        public User User { get; private set; }

        public IReadOnlyCollection<Address> Addresss { get { return _addresss.ToArray(); } }

        public Address Address { get; private set; }

        public AddressType AddressType { get; set; }

        public DateTimeOffset? LastUsedOn { get; set; }
    }
}
