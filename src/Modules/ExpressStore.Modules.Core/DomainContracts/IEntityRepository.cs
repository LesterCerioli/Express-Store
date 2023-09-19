namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IEntityRepository
    {
         Task<Entity> GetBySlug(string slug);

         Task<Entity> GetByName(string name);

         Task<Entity> GetByEntityTypeId(string entityTypeId);

         Task <IEnumerable<Entity>> GetList();

         Task Add(Entity entity);

         void Update(Entity entity);

         void Remove(Entity entity);
         
    }
}