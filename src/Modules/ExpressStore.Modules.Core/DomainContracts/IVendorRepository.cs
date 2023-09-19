namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IVendorRepository
    {
         Task<Vendor> GetByName(string name);

         Task<Vendor> GetBySlug(string slug);

         Task<Vendor> GetByDescription(string description);

         Task<Vendor> GetByEmail(string email);

         Task<IEnumerable<Vendor>> GetList();

         Task Add(Vendor vendor);

         void Update(Vendor vendor);

         void Remove(Vendor vendor);
         
    }
}