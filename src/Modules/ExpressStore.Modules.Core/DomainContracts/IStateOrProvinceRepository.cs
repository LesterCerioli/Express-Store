namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IStateOfProvince
    {
         Task<StateOrProvince> GetByCountryId(string countryId);

         Task<StateOrProvince> GetByCode(string code);

         Task<StateOrProvince> GetByName(string name);

         Task<StateOrProvince> GetByType(string type);

         Task<IEnumerable<StateOrProvince>> GetList();

         Task Add(StateOrProvince stateOrProvince);

         void Update(StateOrProvince stateOrProvince);

         void Remove(StateOrProvince stateOrProvince);
         
    }
}