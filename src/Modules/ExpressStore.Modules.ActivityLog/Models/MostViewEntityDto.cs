namespace ExpressStore.Modules.ActivityLog.Models
{
    public class MostViewEntityDto
    {
        public string? Name { get; private set; }

        public string? Slug { get; private set; }

        public int? ViewedCount { get; private set; }
        
    }
}
