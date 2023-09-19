namespace ExpressStore.Modules.Core.DomainContracts
{
    public interface IAddressRepository
    {
        Task<Address> GetByAddressLine1(string addressLine1);

        Task<Address> GetByAddressLine2(string addressLine2);

        Task<IEnumerable<Address>> GetList();

        Task Add(Address address);

        void Update(Address address);

        void Remove(Address address);
         
    }
}