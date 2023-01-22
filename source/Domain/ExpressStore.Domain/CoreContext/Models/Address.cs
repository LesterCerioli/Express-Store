using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext.Models
{
    public class Address : Entity, IAggregateRoot
    {
        

        public Address(Guid id)
        {
            Id = id;
        }

        protected Address() { }


        public string ContactName { get; private set; }

        
        public string Phone { get; private set; }

        
        public string AddressLine1 { get; private set; }

        
        public string AddressLine2 { get; private set; }

        
        public long? CityId { get; private set; }

        public City City { get; private set; }


        public string ZipCode { get; private set; }

        public long? DistrictId { get; private set; }

        public District District { get; private set; }

        
        public long StateOrProvinceId { get; private set; }

        public StateOrProvince StateOrProvince { get; set; }

        public string CountryId { get; private set; }

        public Country Country { get; set; }

        public IList<UserAddress> UserAddresses { get; private set; } = new List<UserAddress>();


    }
}
