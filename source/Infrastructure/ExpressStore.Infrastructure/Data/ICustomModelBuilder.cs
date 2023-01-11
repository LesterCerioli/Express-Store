using Microsoft.EntityFrameworkCore;

namespace ExpressStore.Infrastructure.Data
{
    public interface ICustomModelBuilder
    {
        void Build(ModelBuilder modelBuilder);
    }
}