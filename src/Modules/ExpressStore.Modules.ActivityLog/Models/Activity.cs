using System.Runtime.CompilerServices;
using System.Collections.Generic;
using NetDevPack.Domain;
using NetDevPack.Domain;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ExpressStore.Modules.ActivityLog.Model
{
    public class Activity : Entity, IAggregateRoot
    {
        
        private readonly List<User> _users;
        
        public Activity()
        {
            _users = new List<User>();
            CreatedOn = DateTime.Now;
        }
        
        public ActivityType ActivityType { get; private set; }

        public User User { get; set; }

        public IReadOnlyCollection<User> Users => _users.AsReadOnly();

        public DateTimeOffset CreatedOn { get; set; }

        
        
    }
}
