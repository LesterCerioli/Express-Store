namespace ExpressStore.Modules.Core.Extensions
{
    public interface IWorkContext
    {
        Task<User> GetCurrentUser();
         
    }
}
