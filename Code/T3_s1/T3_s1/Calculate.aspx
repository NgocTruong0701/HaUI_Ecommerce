<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculate.aspx.cs" Inherits="T3_s1.Calculate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                try
                {
                    int w = int.Parse(Request.Form["width"]);
                    int h = int.Parse(Request.Form["height"]);
                    int dt = w * h;
                    int cv = (w + h) * 2;
                    Response.Write("Chu vi:" + cv + "<br />");
                    Response.Write("Dien tich:" + dt);
                }
                catch (Exception e)
                {
                    Response.Write("Co loi xay ra: " + e.Message);
                }
              //  Response.Write("<a href='Rectangle.aspx'>Nhap lai</a>")


            %>
            <br />
            <a href="Rectangle.aspx">Nhap lai</a>
        </div>
    </form>
</body>
</html>
