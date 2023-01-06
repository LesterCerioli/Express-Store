using System.Globalization;

namespace ExpressStore.Modules.Core.Services.Contracts
{
    public interface ICurrencyService
    {
        CultureInfo CurrencyCulture { get; }

        string FormatCurrency(decimal value);
         
    }
}