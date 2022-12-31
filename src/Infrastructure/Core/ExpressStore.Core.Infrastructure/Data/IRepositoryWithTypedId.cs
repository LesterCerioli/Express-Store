using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ExpressStore.Core.Infrastructure.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace ExpressStore.Core.Infrastructure.Data
{
    public interface IRepositoryWithTypedId<T, TId> where T : IEntityWithTypedId<TId>
    {
        IQueryable<T> Query();

        void Add(T entity);

        void AddRange(IEnumerable<T> entity);

        IDbContextTransaction BeginTransaction();

        void SaveChanges();

        Task SaveChangesAsync();

        void Remove(T entity);
    }
}
