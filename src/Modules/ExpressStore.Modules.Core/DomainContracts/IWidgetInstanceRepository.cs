namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IWidgetInstanceRepository
    {
         Task<WidgetInstance> GetByName(string name);

         Task<WidgetInstance> GetByData(string data);

         Task<WidgetInstance> GetByWidgetId(string widgetId);

         Task<WidgetInstance> GetByHtmlData(string htmlData);

         Task<IEnumerable<WidgetInstance>> GetList();

         Task Add(WidgetInstance widgetInstance);

         void Update(WidgetInstance widgetInstance);

         void Remove(WidgetInstance widgetInstance);
         
    }
}