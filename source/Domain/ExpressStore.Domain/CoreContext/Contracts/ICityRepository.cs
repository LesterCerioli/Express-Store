using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Domain.CoreContext.Models;
using NetDevPack.Data;

namespace ExpressStore.Domain.CoreContext.Contracts
{
    public interface ICityRepository : IRepository<City>
    {
    }
}
