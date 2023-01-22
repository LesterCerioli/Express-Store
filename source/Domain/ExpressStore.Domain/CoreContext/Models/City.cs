using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext.Models
{
    public class City : Entity, IAggregateRoot
    {
        

        public City(Guid id)
        {
            Id = id;
        }

        protected City() { }

        public string StateOrProvinceId { get; private set; }

        public StateOrProvince stateOrProvince { get; private set; }

        
        public string Name { get; set; }
    }
}
