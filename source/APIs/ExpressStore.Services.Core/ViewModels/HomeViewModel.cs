namespace ExpressStore.Services.Core.ViewModels
{
    public class HomeViewModel
    {
        public IList<WidgetInstanceViewModel> WidgetInstances { get; set; } = new List<WidgetInstanceViewModel>();
        
    }
}