using System.Collections.Generic;
using SimplCommerce.Services.Core.API.ViewModels;

namespace SimplCommerce.Module.Cms.Areas.Cms.ViewModels
{
    public class CarouselWidgetForm : WidgetFormBase
    {
        public IList<CarouselWidgetItemForm> Items { get; set; } = new List<CarouselWidgetItemForm>();
    }
}
