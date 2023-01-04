using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Core.Infrastructure.Data;
using ExpressStore.Core.Infrastructure.Models;

namespace ExpressStore.Modules.Core.Data
{
    public class Repository<T> : RepositoryWithTypedId<T, long>, IRepository<T>
        where T : class, IEntityWithTypedId<long>
    {
        public Repository(CoreDbContext context) : base(context)
        {
        }
    }
}
