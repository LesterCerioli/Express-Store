namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface ICountryRepository
    {
         Task<Country> GetByName(string name);

         Task<Country> GetByCode3(string code3);

         Task<IEnumerable<Country>> GetList();

         Task Add(Country country);

         void Update(Country country);

         void Remove(Country country);
         
    }
}