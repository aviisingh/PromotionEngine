using System;
using System.Collections.Generic;

namespace Maersk.PromotionEngine.Data.DbModels
{
    public partial class ProductCategoryDiscount
    {
        public int Id { get; set; }
        public int? DiscountValue { get; set; }
        public int? DiscountUnit { get; set; }
        public int? ProductCategoryId { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }
    }
}
