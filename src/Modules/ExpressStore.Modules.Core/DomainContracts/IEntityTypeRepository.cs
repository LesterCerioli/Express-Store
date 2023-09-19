namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IEntityTypeRepository
    {
         Task<EntityType> GetByName(string name);

         Task<EntityType> GetByAreaName(string areaName);

         Task<EntityType> GetByRoutingController(string routingController);

         Task<EntityType> GetByRoutingAction(string routingAction);

         Task<IEnumerable<EntityType>> GetList();

         Task Add(EntityType entityType);

         void Update(EntityType entityType);

         void Remove(EntityType entityType);
         
    }
}