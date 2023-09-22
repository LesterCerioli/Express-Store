namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IWidgetZone
    {
         Task<WidgetZone> GetByName(string name);

         Task<WidgetZone> GetByDescription(string description);

         Task<IEnumerable<WidgetZone>> GetList();

         Task Add(WidgetZone widgetZone);

         void Update(WidgetZone widgetZone);

         void Remove(WidgetZone widgetZone);
    }
}