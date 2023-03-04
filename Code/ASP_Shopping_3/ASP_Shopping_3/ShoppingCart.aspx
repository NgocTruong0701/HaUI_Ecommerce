<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ASP_Shopping_3.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Gio hang
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <style>
        table {
            border-collapse: collapse;
        }

        th {
            font-size: smaller;
        }

        td, th {
            padding: 3px 5px;
            border: 1px solid #808080;
        }
    </style>

    <%
        Response.Write("<input type='hidden' name='action' value='update' />\n");

        decimal total = 0;
        List<ASP_Shopping_3.CartItem> li = (List<ASP_Shopping_3.CartItem>)Session["Cart"];

        if (li != null)
        {
            Response.Write("<table>");
            Response.Write("<tr><th>Ma SP</th><th>Ten san pham</th>");
            Response.Write("<th>Hinh anh</th><th>Gia tien</th>");
            Response.Write("<th>So luong</th><th>Thanh tien</th>");
            Response.Write("<th>Xoa</th></tr>\n");

            foreach (var item in li)
            {
                Response.Write("<tr>");
                Response.Write("<td align='center'>" + item.product.Pid);
                Response.Write("<input type='hidden' name='pid' value='" + item.product.Pid + "' />");
                Response.Write("</td>");

                Response.Write("<td>" + item.product.ProdName + "</td>\n");

                Response.Write("<td align='center'><img src='/Images/" + item.product.ImagePath + "' width='100'/></td>\n");

                Response.Write("<td align='center'>" + item.product.Price + "</td>\n");

                Response.Write("<td align='center'>");
                Response.Write("<input type='text' name='qq' size='5' value='" + item.quantity + "' />\n");
                Response.Write("</td>");

                Response.Write("<td align='center'>" + (item.quantity * item.product.Price).ToString("N0") + "</td>\n");

                Response.Write("<td align='center'><a href='ShoppingCart.aspx?action=del&pid="+item.product.Pid+"'>Xoa</a></td>\n");
                Response.Write("</tr>\n\n");

                total += item.quantity * item.product.Price;
            }
            Response.Write("</table>");

            Response.Write("<p>Tong tien cac san pham la:<b>" + total.ToString("N0") + "VND</b></p>");
            Response.Write("<input type='submit' value='Update' name='submit' />");
            Response.Write("<p><a href='ShoppingCart.aspx?action=delall'>Xoa tat ca</a></p>\n");
            Response.Write("<p><a href='#'>Dat hang</a></p>\n");
        }
        else
        {
            Response.Write("<i>Chua co san pham nao</i>");
        }
    %>
</asp:Content>
