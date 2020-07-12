using System;
using System.Collections.Generic;

namespace Maersk.PromotionEngine.Data.DbModels
{
    public partial class ProductDiscount
    {
        public int Id { get; set; }
        public int? ProductId { get; set; }
        public int? DiscountValue { get; set; }
        public int? DiscountUnit { get; set; }

        public virtual Product Product { get; set; }
    }
}
