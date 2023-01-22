using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext.Models
{
    public class WidgetZone : Entity, IAggregateRoot
    {
        public WidgetZone(Guid id)
        {
            Id = id;
        }

        protected WidgetZone() { }
       
        public string Name { get; set; }

        public string Description { get; set; }
    }
}
