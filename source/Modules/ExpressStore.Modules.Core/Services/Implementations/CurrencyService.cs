using ExpressStore.Modules.Core.Services.Contracts;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.Core.Services.Implementations
{
    public class CurrencyService : ICurrencyService
    {
        public CultureInfo CurrencyCulture => throw new NotImplementedException();

        public string FormatCurrency(decimal value)
        {
            throw new NotImplementedException();
        }
    }
}
