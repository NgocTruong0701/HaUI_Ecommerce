using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP_Shopping_3
{
    public class CartItem
    {
        public Product product { get; set; }
        public int quantity { get; set; }

        public CartItem()
        {
            product = new Product();
        }

        public override bool Equals(object obj)
        {
            CartItem c = (CartItem)obj;
            return this.product.Pid.Equals(c.product.Pid);
        }
    }
}