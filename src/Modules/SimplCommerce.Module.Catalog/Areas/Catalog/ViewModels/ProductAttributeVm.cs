﻿namespace SimplCommerce.Module.Catalog.Areas.Catalog.ViewModels
{
    public class ProductAttributeVm
    {
        public long Id { get; set; }

        public long AttributeValueId { get; set; }

        public string Name { get; set; }

        public string Value { get; set; }

        public string GroupName { get; set; }
    }
}
