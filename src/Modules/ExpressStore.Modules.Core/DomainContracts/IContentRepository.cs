namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IContentRepository
    {
         Task<Content> GetByName(string name);

         Task<Content> GetBySlug(string slug);

         Task<Content> GetByMetaTitle(string metaTitle);

         Task<Content> GetByMetaKeywords(string metaKeywords);

         Task<Content> GetByMetaDescription(string metaDescription);

         Task<Content> GetByPublishedOn(DateTimeOffset publishedOn);

         Task<IEnumerable<Content>> GetAll();

         Task Add(Content content);

         void Update(Content content);

         void Remove(Content content);
         
    }
}