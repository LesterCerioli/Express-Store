using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Models
{
    public abstract class Content
    {
        private bool isDeleted;
        private IList<User> _users;

        public Content(User createdBy, DateTimeOffset? createdOn,
            DateTimeOffset? latestUpdatedOn,
            User latestUpdatedBy, string name, string slug)
        {
            CreatedBy = createdBy;
            CreatedOn = DateTimeOffset.Now;
            LatestUpdatedOn = DateTimeOffset.Now;
            LatestUpdatedBy = latestUpdatedBy;
            Name = name;
            Slug = slug;
            _users = new List<User>();
        }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? Name { get; private set; }

        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? Slug { get; private set; }

        [StringLength(450)]
        public string? MetaTitle { get; private set; }

        [StringLength(450)]
        public string? MetaKeywords { get; private set; }

        public string? MetaDescription { get; private set; }

        public bool? IsPublished { get; private set; }

        public DateTimeOffset? PublishedOn { get; private set; }

        public bool IsDeleted
        {
            get
            {
                return isDeleted;
            }

            set
            {
                isDeleted = value;
                if (value)
                {
                    IsPublished = false;
                }
            }
        }

        public User User { get; private set; }

        public IReadOnlyCollection<User> Users { get { return _users.ToArray(); } }

        public User CreatedBy { get; private set; }

        public DateTimeOffset? CreatedOn { get; private set; }

        public DateTimeOffset? LatestUpdatedOn { get; private set; }

        public User LatestUpdatedBy { get; private set; }
    }
}
