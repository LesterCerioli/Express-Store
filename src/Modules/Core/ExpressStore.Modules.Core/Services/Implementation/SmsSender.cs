using ExpressStore.Modules.Core.Services.Contracts;

namespace ExpressStore.Modules.Core.Services.Implementation
{
    public class SmsSender : ISmsSender
    {
        public Task SendSmsAsync(string number, string message)
        {
            // Plug in your SMS service here to send a text message.
            return Task.FromResult(0);
        }
    }
}
