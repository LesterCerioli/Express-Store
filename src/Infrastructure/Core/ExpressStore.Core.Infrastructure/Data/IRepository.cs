using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Core.Infrastructure.Models;

namespace ExpressStore.Core.Infrastructure.Data
{
    public interface IRepository<T> : IRepositoryWithTypedId<T, long> where T : IEntityWithTypedId<long>
    {
    }
}
