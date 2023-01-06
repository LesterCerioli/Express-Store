using DinkToPdf;
using DinkToPdf.Contracts;
using ExpressStore.Modules.Core.Services.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExpressStore.Modules.DinkToPdf
{
    public class DinkToPdfConverter : IPdfConverter
    {
        private IConverter _converter;

        public DinkToPdfConverter(IConverter converter)
        {
            _converter = converter;
        }

        public byte[] Convert(string htmlContent)
        {
            var doc = new HtmlToPdfDocument()
            {
                GlobalSettings = {
                    ColorMode = ColorMode.Color,
                    Orientation = Orientation.Portrait,
                    PaperSize = PaperKind.A4,
                },
                Objects = {
                    new ObjectSettings() {
                        HtmlContent = htmlContent,
                        WebSettings = { DefaultEncoding = "utf-8" }
                    }
                }
            };

            byte[] pdf = _converter.Convert(doc);
            return pdf;
        }
    }
}
