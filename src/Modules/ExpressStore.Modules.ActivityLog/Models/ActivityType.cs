using NetDevPack.Domain;

namespace ExpressStore.Modules.ActivityLog.Models
{
    public class ActivityType : Entity, IAggregateRoot
    {
        [Required(ErrorMessage = "The {0} field is required.")]
        [StringLength(450)]
        public string? Name { get; set; }
        
    }
}
