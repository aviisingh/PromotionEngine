using System;
using System.Collections.Generic;

namespace Maersk.PromotionEngine.Data.DbModels
{
    public partial class ProductCategory
    {
        public ProductCategory()
        {
            Product = new HashSet<Product>();
            ProductCategoryDiscount = new HashSet<ProductCategoryDiscount>();
        }

        public int Id { get; set; }
        public string CategoryName { get; set; }

        public virtual ICollection<Product> Product { get; set; }
        public virtual ICollection<ProductCategoryDiscount> ProductCategoryDiscount { get; set; }
    }
}
