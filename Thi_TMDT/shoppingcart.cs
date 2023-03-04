string action = Request["action"];
            
            if(action != null)
            {
                if (action.Equals("del"))
                {
                    List<CartItem> li = (List<CartItem>)Session["Cart"];
                    CartItem ci = new CartItem();
                    ci.product.Pid = Request["pid"];
                    li.Remove(ci);
                    Session["Cart"] = li;
                }

                else if (action.Equals("add"))
                {
                    List<CartItem> li = (List<CartItem>)Session["Cart"];
                    string pid = Request["pid"];
                    string name = Request["name"];
                    string image = Request["image"];
                    decimal price = Decimal.Parse(Request["price"]);
                    CartItem ci = new CartItem();
                    ci.product.Pid = pid;
                    ci.product.ProdName = name;
                    ci.product.ImagePath = image;
                    ci.product.Price = price;
                    ci.quantity = 1;

                    if(li == null)
                    {
                        li = new List<CartItem>();
                        li.Add(ci);
                    }
                    else if (li.Contains(ci))
                    {
                        li[li.IndexOf(ci)].quantity++;
                    }
                    else
                    {
                        li.Add(ci);
                    }

                    Session["Cart"] = li;
                }

                else if (action.Equals("delall"))
                {
                    Session["Cart"] = null;
                }

                else if (action.Equals("update"))
                {
                    List<CartItem> li = (List<CartItem>)Session["Cart"];

                    string pid = Request["pid"];
                    string quantity = Request["qq"];

                    string[] apid = pid.Split(',');
                    string[] aquantity = quantity.Split(',');
                    int i = 0;

                    foreach(var item in li)
                    {
                        CartItem ci = new CartItem();
                        ci.product.Pid = apid[i];
                        ci.quantity = int.Parse(aquantity[i]);

                        int index = li.IndexOf(ci);
                        li[index].quantity = ci.quantity;

                        i++;
                    }

                    Session["Cart"] = li;
                }
            }