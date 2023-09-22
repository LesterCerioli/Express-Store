namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IDistrictRepository
    {
         Task<District> GetByName(string name);

         Task<District> GetByType(string type);

         Task<District> GetByLocation(string location);

         Task<IEnumerable<District>> GetList();

         Task Add(District district);

         void Update(District district);

         void Remove(District district);
         
    }
}