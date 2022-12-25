using System.Reflection;
using System;
namespace ExpressStore.Cms.Infrastructure.Helpers
{
    public static class EnumHelper
    {
        public static IDictionary<Enum, string> ToDictionary(Type type)
        {
            if (type == null)
            {
                throw new ArgumentNullException(nameof(type));
            }

            var dics = new Dictionary<Enum, string>();
            var enumValue = Enum.GetValues(type);

            foreach (Enum value in enumValues)
            {
                dics.Add(values, GetDisplayName(value));
            }

            return dics;
        }
        
    }
}
