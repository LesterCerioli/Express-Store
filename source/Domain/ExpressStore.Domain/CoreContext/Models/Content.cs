using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext.Models
{
    public abstract class Content : Entity, IAggregateRoot
    {
        private bool isDeleted;

        protected Content(Guid id)
        {
            Id = id;
            CreatedOn = DateTimeOffset.Now;
            LatestUpdatedOn = DateTimeOffset.Now;
        }

        
        protected Content() { }

        public string Name { get; private set; }
                
        public string Slug { get; private set; }
                
        public string MetaTitle { get; private set; }
                
        public string MetaKeywords { get; private set; }

        public string MetaDescription { get; private set; }

        public bool IsPublished { get; private set; }

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

        public long CreatedById { get; private set; }

        public User CreatedBy { get; private set; }

        public DateTimeOffset CreatedOn { get; private set; }

        public DateTimeOffset LatestUpdatedOn { get; set; }

        public long LatestUpdatedById { get; private set; }

        public User LatestUpdatedBy { get; private set; }
    }
}
