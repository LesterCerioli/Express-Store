using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Domain.CoreContext.Models
{
    public class CustomerGroupUser
    {


        public IList<Customer> Customers {get; private set;}
    }
}
