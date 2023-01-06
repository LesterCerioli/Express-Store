using MediatR;

namespace ExpressStore.Modules.Core.Events
{
    public class UserSignedIn : INotification
    {
        public long UserId { get; set; }
    }
}