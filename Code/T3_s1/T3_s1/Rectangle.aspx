<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rectangle.aspx.cs" Inherits="T3_s1.Rectangle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Input</h1>
            Width
            <asp:TextBox ID="width" runat="server" /><br />
            Height:
            <asp:TextBox ID="height" runat="server" />
            <br />
            <asp:Button ID="b1" Text="Calculate" runat="server"
                PostBackUrl="Calculate.aspx" />

        </div>
    </form>
</body>
</html>
