namespace ExpressStore.Modules.Core.Services.Contracts
{
    public interface ISmsSender
    {
        Task SendSmsAsync(string number, string message);
    }
}
