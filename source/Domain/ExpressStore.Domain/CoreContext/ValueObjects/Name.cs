using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Domain.CoreContext.ValueObjects
{
    public class Name
    {
        public Name(string firstName, string lastName, string middleName)
        {
            FirstName = firstName;
            LastName = lastName;
            MiddleName = middleName;
        }

        public string FirstName { get; private set; }
        
        public string LastName { get; private set; }

        public string MiddleName { get; private set; }

        public override bool Equals(object obj)
        {
            return obj is Name name &&
                   FirstName == name.FirstName &&
                   LastName == name.LastName &&
                   MiddleName == name.MiddleName;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(FirstName, LastName, MiddleName);
        }
    }

}
