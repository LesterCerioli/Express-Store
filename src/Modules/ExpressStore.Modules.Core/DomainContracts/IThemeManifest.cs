namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IThemeManifest
    {
         Task<ThemeManifest> GetByName(string name);

         Task<ThemeManifest> GetByFullName(string fullName);

         Task<ThemeManifest> GetByDisplayName(string displayName);

         Task<ThemeManifest> GetByVersion(string version);

         Task Add(ThemeManifest themeManifest);

         void Update(ThemeManifest themeManifest);

         void Remove(ThemeManifest themeManifest);
         
    }
} 