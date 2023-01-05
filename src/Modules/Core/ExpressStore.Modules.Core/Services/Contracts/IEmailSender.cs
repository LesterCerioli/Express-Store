namespace ExpressStore.Modules.Core.Services.Contracts
{
    public interface IEmailSender
    {
        Task SendEmailAsync(string email, string subject, string message, bool isHtml = false);
    }
}
