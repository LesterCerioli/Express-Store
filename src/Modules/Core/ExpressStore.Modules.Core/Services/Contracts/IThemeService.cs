namespace ExpressStore.Modules.Core.Services.Contracts
{
    public interface IThemeService
    {
        Task<IList<ThemeListItem>> GetInstalledThemes();

        Task SetCurrentTheme(string themeName);

        string PackTheme(string themeName);

        Task Install(Stream stream, string themeName);

        void Delete(string themeName);
    }
}
