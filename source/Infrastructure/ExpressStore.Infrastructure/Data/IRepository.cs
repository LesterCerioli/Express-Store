using ExpressStore.Infrastructure.Models;

namespace ExpressStore.Infrastructure.Data
{
    public interface IRepository<T> : IRepositoryWithTypedId<T, long> where T : IEntityWithTypedId<long>
    {
        
    }
}