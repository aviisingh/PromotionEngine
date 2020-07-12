using Maersk.PromotionEngine.Api;
using Maersk.PromotionEngine.Api.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace Maersk.PromotionEngine.L0
{
    [TestClass]
    public class PromotionEngineTest
    {
        [TestMethod]
        public void GetCartValueAsync_Should_Return_CartValue_100_For_Product_A_B_C()
        {
            List<Cart> products = new List<Cart>
            {
                new Cart { ProductId = 1, ProductName = "A", Quantity = 1 },
                new Cart { ProductId = 2, ProductName = "B", Quantity = 1 },
                new Cart { ProductId = 3, ProductName = "C", Quantity = 1 }
            };

            CartController cartController = new CartController();

            var actualPrice = cartController.CartValueAsync(products);


            Assert.AreEqual(100, actualPrice.Result);

        }

        [TestMethod]
        public void GetCartValueAsync_Should_Return_CartValue_370_For_Product_5A_5B_1C()
        {
            List<Cart> products = new List<Cart>
            {
                new Cart { ProductId = 1, ProductName = "A", Quantity = 5 },
                new Cart { ProductId = 2, ProductName = "B", Quantity = 5 },
                new Cart { ProductId = 3, ProductName = "C", Quantity = 1 }
            };

            CartController cartController = new CartController();

            var actualPrice = cartController.CartValueAsync(products);

            Assert.AreEqual(370, actualPrice.Result);
        }

        [TestMethod]
        public void GetCartValueAsync_Should_Return_CartValue_280_For_Product_3A_5B_1C_1D()
        {
            List<Cart> products = new List<Cart>
            {
                new Cart { ProductId = 1, ProductName = "A", Quantity = 5 },
                new Cart { ProductId = 2, ProductName = "B", Quantity = 5 },
                new Cart { ProductId = 3, ProductName = "C", Quantity = 1 },
                new Cart { ProductId = 4, ProductName = "D", Quantity = 1 }                
            };

            CartController cartController = new CartController();

            var actualPrice = cartController.CartValueAsync(products);

            Assert.AreEqual(370, actualPrice.Result);
        }
    }
}
