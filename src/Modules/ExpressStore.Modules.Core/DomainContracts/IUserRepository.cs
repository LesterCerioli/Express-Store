namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IUserRepository
    {
         Task<User> GetByFullName(string fullName);

         Task<User> GetByRefreshTokenHash(string refreshTokenHash);

         Task<User> GetByCulture(string culture);

         Task<User> GetByExtensionData(string extensionData);

         Task Add(User user);

         void Update(User user);

         void Remove(User user);
         
    }
}