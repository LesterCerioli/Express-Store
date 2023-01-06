namespace ExpressStore.Modules.Core.Services.Contracts
{
    public interface IPdfConverter
    {
        byte[] Convert(string htmlContent);
         
    }
}