using ExpressStore.Modules.Core.ValueObjects;
using NetDevPack.Domain;
namespace ExpressStore.Modules.Core.Models
{
    public class Address : Entity, IAggregateRoot
    {

        private readonly List<District> _districts;

        public Address(string? contactName, Telphone telephone, 
            string? addressLine1, string? addressLine2, State state, 
            City city, Country country, District district)
        {
            ContactName = contactName;
            Telephone = telephone;
            AddressLine1 = addressLine1;
            AddressLine2 = addressLine2;
            State = state;
            City = city;
            Country = country;
            _districts = new List<District>();
        }

        public string? ContactName { get; private set; }

        public Telphone Telephone { get; private set; }

        public string? AddressLine1 { get; private set; }

        public string? AddressLine2 { get; private set; }

        public State State { get; private set; }

        public City City { get; private set; }

        public Country Country { get; private set; }
               

        public District District { get; private set; }

        public IReadOnlyCollection<District> Districts => _districts.AsReadOnly();
    }
}
