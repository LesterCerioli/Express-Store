namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface ICostumerGroup
    {
         Task<CostumerGroup> GetByName(string name);

         Task<CostumerGroup> GetByDescription(string description)

         Task<IEnumerable<CostumerGroup>> GetAll();

         Task Add(CostumerGroup costumerGroup);

         void Update(CostumerGroup costumerGroup);

         void Remove(CostumerGroup costumerGroup);
         
    }
}