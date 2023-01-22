using ExpressStore.Domain.CoreContext.ValueObjects;
using ExpressStore.Domain.CPFContext.Models;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext.Models
{
    public class Customer : Entity, IAggregateRoot
    {

        protected Customer() {}
        
        public Name Name { get; private set; }

        public string CPFId { get; private set; }

        public CPF CPF { get; private set; }

        public DateTimeOffset BirthDate { get; private set; }

        public string AddressId { get; private set; }

        public Address Address { get; private set; }

        public DateTimeOffset CreatedOn { get; set; }

        public DateTimeOffset LatestUpdatedOn { get; set; }

        
        
    }
}
