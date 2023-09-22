using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Modules.Core.Models
{
    public class UserRole : Entity, IAggregateRoot
    {
        private IList<User> _users;

        private IList<Role> _roles;

        public UserRole()
        {
            _users = new List<User>();
            _roles = new List<Role>();
        }
        public IReadOnlyCollection<User> Users { get { return _users.ToArray(); } }

        public User User { get; private set; }

        public Guid UserId { get; private set; }

        public IReadOnlyCollection<Role> Roles { get { return _roles.ToArray(); } }

        public Role Role { get; private set; }

        public Guid RoleId { get; private set; }
    }
}
