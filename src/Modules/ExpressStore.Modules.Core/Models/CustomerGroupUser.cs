using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class CustomerGroupUser
    {
        private IList<User> _users;

        private IList<CustomerGroup> _customerGroup;

        public CustomerGroupUser(DateTimeOffset? LastUsedOn, AddressType AddressType)
        {
            _users = new List<User>();
            _customerGroup = new List<CustomerGroup>();
        }

        public IReadOnlyCollection<User> Users { get { return _users.ToArray(); } }

        public User User { get; private set; }

        public IReadOnlyCollection<CustomerGroup> CustomerGroups { get { return _customerGroup.ToArray(); } }

        public CustomerGroup CustomerGroup { get; private set; }
    }
}
