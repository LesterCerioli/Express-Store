namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IMediaRepository
    {
         Task<Media> GetByCaption(string caption);

         Task<Media> GetByFileName(string fileName);

         Task<IEnumerable<Media> GetList();

         Task Add(Media media);

         void Update(Media media);

         void Remove(Media media);
         
    }
}