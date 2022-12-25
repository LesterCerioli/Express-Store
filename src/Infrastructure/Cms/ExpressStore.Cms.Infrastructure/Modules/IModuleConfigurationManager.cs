namespace ExpressStore.Cms.Infrastructure.Modules
{
    public interface IModuleConfigurationManager
    {
        IEnumerable<ModuleInfo> GetModules();
         
    }
}
