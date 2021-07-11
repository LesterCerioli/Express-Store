DELETE FROM Cms_MenuItem;
DELETE FROM Core_Entity;
DELETE FROM ShoppingCart_CartItem;
DELETE FROM ShoppingCart_Cart;
DELETE FROM Payments_Payment;
DELETE FROM Shipments_ShipmentItem;
DELETE FROM Shipments_Shipment;
DELETE FROM Pricing_CartRuleUsage;
DELETE FROM Pricing_CartRule;
DELETE FROM Orders_OrderHistory;
DELETE FROM Orders_OrderItem;
DELETE FROM Orders_Order;
DELETE FROM Inventory_StockHistory;
DELETE FROM Inventory_Stock;
DELETE FROM ProductComparison_ComparingProduct;
DELETE FROM Catalog_ProductAttributeValue;
DELETE FROM Catalog_ProductOptionCombination;
DELETE FROM Catalog_ProductOptionValue;
DELETE FROM Catalog_ProductAttribute;
DELETE FROM Catalog_ProductAttributeGroup;
DELETE FROM Catalog_ProductMedia;
DELETE FROM Catalog_ProductCategory;
DELETE FROM Catalog_ProductLink;
DELETE FROM Catalog_ProductPriceHistory;
DELETE FROM Catalog_Product;
UPDATE Catalog_Category SET ParentId = null;
DELETE FROM Catalog_Category;
DELETE FROM News_NewsItem;
DELETE FROM Core_Media;
DELETE FROM Catalog_Brand;
DELETE FROM Catalog_ProductTemplateProductAttribute;
DELETE FROM Catalog_ProductTemplate;
DELETE FROM Cms_Page;
DELETE FROM Core_WidgetInstance;
DELETE FROM Reviews_Reply;
DELETE FROM Reviews_Review;

INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (1, 'woman', 'Woman', 1, 'Category');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (2, 'man', 'Man', 2, 'Category');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (3, 'shoes', 'Shoes', 3, 'Category');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (4, 'watches', 'Watches', 4, 'Category');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (5, 't-shirt', 'T-Shirt', 5, 'Category');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (6, 'suit', 'Suit', 6, 'Category');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (7, 'lightweight-jacket', 'Lightweight Jacket', 1, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (8, 'esprit-ruffle-shirt', 'Esprit Ruffle Shirt', 8, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (9, 'herschel-supply', 'Herschel supply', 9, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (10, 'only-check-trouser', 'Only Check Trouser', 10, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (11, 'classic-trench-coat', 'Classic Trench Coat', 11, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (12, 'front-pocket-jumper', 'Front Pocket Jumper', 12, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (13, 'vintage-inspired-classic', 'Vintage Inspired Classic', 13, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (14, 'shirt-in-stretch-cotton', 'Shirt in Stretch Cotton', 14, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (15, 'pieces-metallic-printed', 'Pieces Metallic Printed', 15, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (16, 'converse-all-star-hi-plimsolls', 'Converse All Star Hi Plimsolls', 16, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (17, 'femme-t-shirt-in-stripe', 'Femme T-Shirt In Stripe', 17, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (18, 'herschel-supply-2', 'Herschel supply', 18, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (19, 'herschel-supply-2-3', 'Herschel supply', 19, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (20, 't-shirt-with-sleeve', 'T-Shirt with Sleeve', 20, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (21, 'pretty-little-thing', 'Pretty Little Thing', 21, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (22, 'square-neck-back', 'Square Neck Back', 22, 'Product');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (23, 'help-center', 'Help center', 1, 'Page');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (24, 'about-us', 'About Us', 2, 'Page');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (25, 'terms-of-use', 'Terms of Use', 3, 'Page');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (26, 'adidas', 'Adidas', 1, 'Brand');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (27, 'calvin-klein', 'Calvin Klein', 2, 'Brand');
INSERT INTO Core_Entity (Id, Slug, Name, EntityId, EntityTypeId) VALUES (28, 'ogival', 'Ogival', 3, 'Brand');

INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (1, NULL, 2, 1, NULL, 'Woman', 0);
INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (2, NULL, 2, 2, NULL, 'Man', 1);
INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (3, NULL, 2, 3, NULL, 'Shoes', 2);
INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (4, NULL, 2, 4, NULL, 'Watches', 3);
INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (5, NULL, 1, 24, NULL, 'About Us', 0);
INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (6, NULL, 1, 23, NULL, 'Help center', 1);
INSERT INTO Cms_MenuItem (Id, ParentId, MenuId, EntityId, CustomLink, Name, DisplayOrder) VALUES (7, NULL, 1, 25, NULL, 'Terms of Use', 2);

INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (1, NULL, 0, 'b94d02b8-6d3a-4919-b144-c121387a272d.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (2, NULL, 0, '911207ad-5b45-423f-9575-2185c85261c0.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (3, NULL, 0, '37dc2d94-dbac-4112-afbc-2fc88ddca753.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (4, NULL, 0, 'bf16c55d-747e-4238-b444-06c3fe0463b2.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (5, NULL, 0, '2db2ffbb-46d5-4f3c-8dc0-614e83162a1c.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (6, NULL, 0, 'daa3af7c-452c-4c0f-9c61-aeccf001e825.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (7, NULL, 0, 'c8756541-d192-48e2-b822-2bf616fb876e.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (8, NULL, 0, '0199b7af-4d14-4858-a902-62ca8c5e9b6d.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (9, NULL, 0, '1761ffd9-2c53-4a6b-856f-e2f4039d0247.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (10, NULL, 0, '1b896b5e-f6bf-41ca-89ee-025c6be9e08c.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (11, NULL, 0, '1aead9b6-73a8-45c1-a463-7655e9a9b478.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (12, NULL, 0, 'c27ee7c7-deb3-4697-a6b6-3358d72b556f.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (13, NULL, 0, '532fc844-2c11-494e-a68b-af0be2b9a87f.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (14, NULL, 0, '4d24a1fd-a362-47e4-9060-011d415398b9.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (15, NULL, 0, '117ed074-628a-4db7-abbb-4a335adb3504.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (16, NULL, 0, '78f1840e-7a50-49de-9dad-9127ec290dfd.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (17, NULL, 0, 'de4bdb93-ab9d-4515-b19b-bb55aa4703b3.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (18, NULL, 0, 'dd14f5e8-2e76-4f60-9f58-19652dcb80c5.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (19, NULL, 0, 'bf6461d5-0a9b-4a19-9516-5ca3b5b9da9e.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (20, NULL, 0, '461a2564-b657-46bb-bcb5-f7deaeb2a0a9.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (21, NULL, 0, 'fb26a4f2-0a36-41dd-b0e8-a6c0554d31f8.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (22, NULL, 0, '74552a46-4309-43e1-ad4e-79cd9e778722.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (23, NULL, 0, '1a79b958-50bc-48d8-b3e5-826222949d28.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (24, NULL, 0, 'e0a99874-20a8-43b8-9199-b109bb2c3ae5.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (25, NULL, 0, '1d9d5101-7e0b-4c29-88fe-e54891647672.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (26, NULL, 0, '5cf020c2-72b5-407d-836a-ef1a316b741c.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (27, NULL, 0, 'df3590c2-a6a0-4813-96db-4a07e6c7f460.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (28, NULL, 0, 'bc68637c-420f-4951-9130-b9fca36484e6.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (29, NULL, 0, '1201ba32-984a-48eb-b86a-23d4c8f76d5b.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (30, NULL, 0, '0089c72c-2fbe-48c3-a33f-718ae1eafd8b.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (31, NULL, 0, '2f856ed8-323e-4c26-99d1-cd4ec07f9979.jpg', 0);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (32, NULL, 0, 'fd623151-fc8a-464b-8c19-b1350d785bce.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (33, NULL, 0, '057afd18-8973-4078-9fd2-7eb0b52d8e72.jpg', 1);
INSERT INTO Core_Media (Id, Caption, FileSize, FileName, MediaType) VALUES (34, NULL, 0, 'ee4b30bf-fd13-47a7-b893-0e6e6b1aed05.jpg', 0);

INSERT INTO Catalog_Category (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, Description, DisplayOrder, IsPublished, IncludeInMenu, IsDeleted, ParentId, ThumbnailImageId) VALUES (1, 'Woman', 'woman', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL);
INSERT INTO Catalog_Category (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, Description, DisplayOrder, IsPublished, IncludeInMenu, IsDeleted, ParentId, ThumbnailImageId) VALUES (2, 'Man', 'man', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL);
INSERT INTO Catalog_Category (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, Description, DisplayOrder, IsPublished, IncludeInMenu, IsDeleted, ParentId, ThumbnailImageId) VALUES (3, 'Shoes', 'shoes', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL);
INSERT INTO Catalog_Category (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, Description, DisplayOrder, IsPublished, IncludeInMenu, IsDeleted, ParentId, ThumbnailImageId) VALUES (4, 'Watches', 'watches', NULL, NULL, NULL, NULL, 0, 1, 1, 0, NULL, NULL);
INSERT INTO Catalog_Category (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, Description, DisplayOrder, IsPublished, IncludeInMenu, IsDeleted, ParentId, ThumbnailImageId) VALUES (5, 'T-Shirt', 't-shirt', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 2, NULL);
INSERT INTO Catalog_Category (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, Description, DisplayOrder, IsPublished, IncludeInMenu, IsDeleted, ParentId, ThumbnailImageId) VALUES (6, 'Suit', 'suit', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 2, NULL);

INSERT INTO Catalog_Brand (Id, Name, Slug, Description, IsPublished, IsDeleted) VALUES (1, 'Adidas', 'adidas', NULL, 1, 0);
INSERT INTO Catalog_Brand (Id, Name, Slug, Description, IsPublished, IsDeleted) VALUES (2, 'Calvin Klein', 'calvin-klein', NULL, 1, 0);
INSERT INTO Catalog_Brand (Id, Name, Slug, Description, IsPublished, IsDeleted) VALUES (3, 'Ogival', 'ogival', NULL, 1, 0);


INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (1, 0, 0, 5, 1);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (2, 0, 0, 2, 7);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (3, 0, 0, 5, 7);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (4, 0, 0, 2, 6);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (5, 0, 0, 5, 6);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (6, 0, 0, 2, 5);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (7, 0, 0, 5, 5);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (8, 0, 0, 2, 4);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (9, 0, 0, 5, 4);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (10, 0, 0, 5, 3);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (11, 0, 0, 2, 2);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (12, 0, 0, 5, 2);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (13, 0, 0, 2, 3);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (14, 0, 0, 2, 1);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (15, 0, 0, 1, 8);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (16, 0, 0, 1, 9);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (17, 0, 0, 2, 10);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (18, 0, 0, 1, 11);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (19, 0, 0, 1, 12);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (20, 0, 0, 4, 13);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (21, 0, 0, 2, 13);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (22, 0, 0, 1, 14);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (23, 0, 0, 1, 15);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (24, 0, 0, 3, 16);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (25, 0, 0, 1, 17);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (26, 0, 0, 2, 18);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (27, 0, 0, 5, 18);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (28, 0, 0, 2, 19);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (29, 0, 0, 1, 20);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (30, 0, 0, 1, 21);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (31, 0, 0, 1, 22);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (32, 0, 0, 1, 23);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (33, 0, 0, 1, 24);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (34, 0, 0, 1, 25);
INSERT INTO Catalog_ProductCategory (Id, IsFeaturedProduct, DisplayOrder, CategoryId, ProductId) VALUES (35, 0, 0, 1, 26);

INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (1, 1, 2, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (2, 1, 7, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (3, 1, 3, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (4, 1, 6, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (5, 1, 4, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (6, 1, 5, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (7, 22, 23, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (8, 22, 24, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (9, 22, 25, 1);
INSERT INTO Catalog_ProductLink (Id, ProductId, LinkedProductId, LinkType) VALUES (10, 22, 26, 1);

INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (1, 1, 2, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (2, 1, 3, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (3, 1, 4, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (4, 8, 6, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (5, 9, 8, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (6, 10, 10, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (7, 11, 12, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (8, 12, 14, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (9, 13, 16, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (10, 14, 18, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (11, 15, 20, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (12, 16, 22, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (13, 17, 24, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (14, 18, 26, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (15, 19, 28, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (16, 20, 30, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (17, 21, 32, 0);
INSERT INTO Catalog_ProductMedia (Id, ProductId, MediaId, DisplayOrder) VALUES (18, 22, 33, 0);

INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (1, 4, 1, 'Black', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (2, 6, 1, 'Black', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (3, 6, 2, 'S', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (4, 5, 1, 'Gray', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (5, 5, 2, 'L', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (6, 7, 1, 'Gray', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (7, 4, 2, 'L', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (8, 3, 1, 'Gray', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (9, 3, 2, 'M', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (10, 7, 2, 'S', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (11, 2, 1, 'Black', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (12, 2, 2, 'M', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (13, 23, 1, 'Silver', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (14, 23, 2, 'S', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (15, 26, 1, 'Gray', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (16, 24, 1, 'Silver', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (17, 24, 2, 'M', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (18, 26, 2, 'M', 1);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (19, 25, 1, 'Gray', 0);
INSERT INTO Catalog_ProductOptionCombination (Id, ProductId, OptionId, Value, SortIndex) VALUES (20, 25, 2, 'S', 1);

INSERT INTO Catalog_ProductOptionValue (Id, OptionId, ProductId, Value, DisplayType, SortIndex) VALUES (1, 1, 1, '[{{"Key":"Black","Display":"#090808"}},{{"Key":"Gray","Display":"#cfd6dd"}}]', 'color', 1);
INSERT INTO Catalog_ProductOptionValue (Id, OptionId, ProductId, Value, DisplayType, SortIndex) VALUES (2, 2, 1, '[{{"Key":"M","Display":"M"}},{{"Key":"L","Display":"L"}},{{"Key":"S","Display":"S"}}]', 'text', 0);
INSERT INTO Catalog_ProductOptionValue (Id, OptionId, ProductId, Value, DisplayType, SortIndex) VALUES (3, 1, 22, '[{{"Key":"Silver","Display":"#e8e6ef"}},{{"Key":"Gray","Display":"#8c8585"}}]', 'color', 0);
INSERT INTO Catalog_ProductOptionValue (Id, OptionId, ProductId, Value, DisplayType, SortIndex) VALUES (4, 2, 22, '[{{"Key":"S","Display":null}},{{"Key":"M","Display":null}}]', 'text', 1);

INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (1, 2, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (2, 3, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (3, 4, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (4, 5, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (5, 6, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (6, 7, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (7, 8, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (8, 24, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (9, 23, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (10, 22, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (11, 21, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (12, 20, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (13, 19, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (14, 18, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (15, 25, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (16, 17, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (17, 15, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (18, 14, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (19, 13, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (20, 12, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (21, 11, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (22, 10, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (23, 9, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (24, 16, 1, 100, 0);
INSERT INTO Inventory_Stock (Id, ProductId, WarehouseId, Quantity, ReservedQuantity) VALUES (25, 26, 1, 100, 0);

INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (1, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (2, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (3, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (4, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (5, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (6, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (7, 1, 10, '1304750238764851200', CAST(58.79 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (8, 8, 10, '1304750238764851200', CAST(16.64 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (9, 9, 10, '1304750238764851200', CAST(35.31 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (10, 10, 10, '1304750238764851200', CAST(25.50 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (11, 11, 10, '1304750238764851200', CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (12, 12, 10, '1304750238764851200', CAST(34.75 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (13, 13, 10, '1304750238764851200', CAST(93.20 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (14, 14, 10, '1304750238764851200', CAST(52.66 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (15, 15, 10, '1304750238764851200', CAST(18.96 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (16, 16, 10, '1304750238764851200', CAST(75.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (17, 17, 10, '1304750238764851200', CAST(25.85 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (18, 18, 10, '1304750238764851200', CAST(63.16 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (19, 19, 10, '1304750238764851200', CAST(63.15 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (20, 20, 10, '1304750238764851200', CAST(18.49 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (21, 21, 10, '1304750238764851200', CAST(54.79 AS Decimal(18, 2)), NULL, NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (22, 22, 10, '1304750238764851200', CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (23, 24, 10, '1304750238764851200', CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (24, 23, 10, '1304750238764851200', CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (25, 25, 10, '1304750238764851200', CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL);
INSERT INTO Catalog_ProductPriceHistory (Id, ProductId, CreatedById, CreatedOn, Price, OldPrice, SpecialPrice, SpecialPriceStart, SpecialPriceEnd) VALUES (26, 26, 10, '1304750238764851200', CAST(29.64 AS Decimal(18, 2)), CAST(39.64 AS Decimal(18, 2)), NULL, NULL, NULL);

INSERT INTO Cms_Page (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, IsPublished, PublishedOn, IsDeleted, CreatedById, CreatedOn, LatestUpdatedOn, LatestUpdatedById, Body) VALUES (1, 'Help center', 'help-center', NULL, NULL, NULL, 1, NULL, 0, 10, '1304750238764851200', '1304750238764851200', 10, '<h1>Help center</h1><p><span style="color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">Your information. Use admin site to update</span><br></p>');
INSERT INTO Cms_Page (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, IsPublished, PublishedOn, IsDeleted, CreatedById, CreatedOn, LatestUpdatedOn, LatestUpdatedById, Body) VALUES (2, 'About Us', 'about-us', NULL, NULL, '', 1, NULL, 0, 10, '1304750238764851200', '1304750238764851200', 10, '<h1>About Us</h1><p>Edit your information in the admin side</p>');
INSERT INTO Cms_Page (Id, Name, Slug, MetaTitle, MetaKeywords, MetaDescription, IsPublished, PublishedOn, IsDeleted, CreatedById, CreatedOn, LatestUpdatedOn, LatestUpdatedById, Body) VALUES (3, 'Terms of Use', 'terms-of-use', NULL, NULL, NULL, 1, NULL, 0, 10, '1304750238764851200', '1304750238764851200', 10, '<h1>Term and Conditions</h1><p>Your term and conditions. Use admin site to update.<br></p>');

INSERT INTO Core_WidgetInstance (Id, Name, CreatedOn, LatestUpdatedOn, PublishStart, PublishEnd, WidgetId, WidgetZoneId, DisplayOrder, Data, HtmlData) VALUES (1, 'Home Featured', '1304750238764851200', '1304750238764851200', '1304750238764851200', NULL, 'CarouselWidget', 1, 0, '[{{"Image":"88604574-f0a3-4982-9b0d-f8a7558dd3ba.jpg","ImageUrl":null,"Caption":"NEW SEASON","SubCaption":"Women Collection 2018","LinkText":"Shop Now","TargetUrl":"/woman"}},{{"Image":"a5904343-189d-469b-a93b-d553c109b781.jpg","ImageUrl":null,"Caption":"Jackets & Coats","SubCaption":"Men New-Season","LinkText":"Shop Now","TargetUrl":"/man"}},{{"Image":"83c21bb9-2f0d-446a-bb0c-3b19e6d922aa.jpg","ImageUrl":null,"Caption":"New arrivals","SubCaption":"Men Collection 2018","LinkText":"Shop Now","TargetUrl":"/man"}}]', NULL);
INSERT INTO Core_WidgetInstance (Id, Name, CreatedOn, LatestUpdatedOn, PublishStart, PublishEnd, WidgetId, WidgetZoneId, DisplayOrder, Data, HtmlData) VALUES (2, 'New products', '1304750238764851200', '1304750238764851200', '1304750238764851200', NULL, 'ProductWidget', 2, 0, '{{"NumberOfProducts":4,"CategoryId":null,"OrderBy":"Newest","FeaturedOnly":false}}', NULL);
INSERT INTO Core_WidgetInstance (Id, Name, CreatedOn, LatestUpdatedOn, PublishStart, PublishEnd, WidgetId, WidgetZoneId, DisplayOrder, Data, HtmlData) VALUES (3, 'Man collection', '1304750238764851200', '1304750238764851200', '1304750238764851200', NULL, 'ProductWidget', 2, 0, '{{"NumberOfProducts":4,"CategoryId":2,"OrderBy":"Newest","FeaturedOnly":false}}', NULL);
INSERT INTO Core_WidgetInstance (Id, Name, CreatedOn, LatestUpdatedOn, PublishStart, PublishEnd, WidgetId, WidgetZoneId, DisplayOrder, Data, HtmlData) VALUES (4, 'Woman collection', '1304750238764851200', '1304750238764851200', '1304750238764851200', NULL, 'ProductWidget', 2, 0, '{{"NumberOfProducts":4,"CategoryId":1,"OrderBy":"Newest","FeaturedOnly":false}}', NULL);

INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (1, 7, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (2, 6, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (3, 5, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (4, 4, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (5, 3, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (6, 2, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (7, 26, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (8, 16, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (9, 9, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (10, 10, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (11, 11, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (12, 12, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (13, 13, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (14, 14, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (15, 15, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (16, 17, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (17, 25, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (18, 18, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (19, 19, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (20, 20, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (21, 21, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (22, 22, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (23, 23, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (24, 24, 1, '1304750238764851200', 10, 100, NULL);
INSERT INTO Inventory_StockHistory (Id, ProductId, WarehouseId, CreatedOn, CreatedById, AdjustedQuantity, Note) VALUES (25, 8, 1, '1304750238764851200', 10, 100, NULL);

INSERT INTO Reviews_Review (Id, UserId, Title, Comment, Rating, ReviewerName, Status, CreatedOn, EntityTypeId, EntityId) VALUES (1, 10, 'Good', 'very good', 5, 'very good', 5, '1304750238764851200', 'Product', 20);
INSERT INTO Reviews_Review (Id, UserId, Title, Comment, Rating, ReviewerName, Status, CreatedOn, EntityTypeId, EntityId) VALUES (2, 10, 'excellent', 'very good', 5, 'Thien', 5, '1304750238764851200', 'Product', 22);
