using MediatR;

namespace ExpressStore.Modules.Core.Events
{
    public class EntityViewed : INotification
    {
        public long EntityId {get; set; }

        public string EntityTypeId { get; set; }
    }
}