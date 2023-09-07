namespace ExpressStore.Infrastructure.Models
{
    public interface IEntityWithTypedId<TId>
    {
         TId Id {get;}
    }
}
