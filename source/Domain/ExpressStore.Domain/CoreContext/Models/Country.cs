using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext.Models
{
    public class Country : Entity, IAggregateRoot
    {
        public Country(Guid id)
        {
            Id = id;
        }

        protected Country() {}
        
        public string Name { get; set; }

        public string Code3 { get; set; }

        public bool IsBillingEnabled { get; set; }

        public bool IsShippingEnabled { get; set; }

        public bool IsCityEnabled { get; set; } = true;

        public bool IsZipCodeEnabled { get; set; } = true;

        public bool IsDistrictEnabled { get; set; } = true;

        public IList<StateOrProvince> StatesOrProvinces { get; set; } = new List<StateOrProvince>();
    }
}
