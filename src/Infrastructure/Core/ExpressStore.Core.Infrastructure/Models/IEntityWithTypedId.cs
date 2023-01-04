namespace ExpressStore.Core.Infrastructure.Models
{
    public interface IEntityWithTypedId<TIde>
    {
        TIde Id { get; }
         
    }
}
