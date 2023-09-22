namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IAppSettingRepository
    {
         Task<AppSetting> GetByValue(string value);

         Task<AppSetting> GetByModule(string module);

         Task<IEnumerable<AppSetting>> GetList();

         Task Add(Address address);

         void Update(Address address);

         void Remove(Address address);
    }
}