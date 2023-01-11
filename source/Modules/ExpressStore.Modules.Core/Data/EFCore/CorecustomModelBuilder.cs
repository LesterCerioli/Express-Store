using ExpressStore.Infrastructure.Data;
using ExpressStore.Infrastructure.Models;

namespace ExpressStore.Modules.Core.Data.EFCore
{
     public class Repository<T> : RepositoryWithTypedId<T, long>, IRepository<T>
       where T : class, IEntityWithTypedId<long>
    {
        public Repository(CoreDbContext context) : base(context)
        {
        }
    }
}