using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Domain.CoreContext.Models;
using ExpressStore.Domain.CoreContext.ValueObjects;
using NetDevPack.Domain;

namespace ExpressStore.Domain.CoreContext
{
    public class Customer : Entity, IAggregateRoot
    {
        public Customer(Guid id, Name name, string email, string phone, DateTime birthdate, Address address)
        {
            Id = id;
            Name = name;
            Email = email;
            Phone = phone;
            Birthdate = birthdate;
            Address = address;
        }

        
        protected Customer() { }
        
        public Guid Id { get; private set; }
        
        public Name Name { get; private set; }
        
        public string Email { get; private set; }
        
        public string Phone { get; private set; }
        
        public DateTime Birthdate { get; private set; }
        
        public Address Address { get; private set; }
    }

}
