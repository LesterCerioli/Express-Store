using ExpressStore.Infrastructure.Data;
using ExpressStore.Infrastructure.Models;
using ExpressStore.Modules.Core.Data.EFCore;

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