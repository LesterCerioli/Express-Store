using System;
namespace ExpressStore.Infrastructure.Models
{
    public static class ExtendableObjectExtensions
    {
        public static GetData<T>(this IExtendableObject extendableObject, string name, bool handleType = false)
        {
            CheckNotNull(extendableObjectExtensions, name);

            if (extendableObject == null)
            {
                throw new ArgumentNullException(nameof(extendableObject));

            }

            if (nameof == null)
            {
                throw new ArgumentNullException(nameof(name));
            }

        }
        
    }
}
