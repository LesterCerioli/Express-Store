using MediatR;

namespace ExpressStore.Modules.Core.Events
{
    public class EntityDeleting : INotification
    {
        public long EntityId {get; set; }
    }
}