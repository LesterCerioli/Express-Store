using System.Collections.Generic;
using SimplCommerce.Services.Core.API.ViewModels;

namespace SimplCommerce.Module.Cms.Areas.Cms.ViewModels
{
    public class SpaceBarWidgetForm : WidgetFormBase
    {
        public IList<SpaceBarWidgetSetting> Items = new List<SpaceBarWidgetSetting>();
    }
}
