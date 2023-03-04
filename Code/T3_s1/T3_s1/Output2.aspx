<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output2.aspx.cs" Inherits="T3_s1.Output2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                TextBox txtname = (TextBox)Page.PreviousPage.FindControl("txtName");
                string name = txtname.Text;
                RadioButtonList radg = (RadioButtonList)Page.PreviousPage.FindControl("radGender");
                string gender = radg.Text;
                Response.Write("Name: " + name + "<br />");
                Response.Write("Gender: " + gender);
                %>
        </div>
    </form>
</body>
</html>
