<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="T3_s1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login</h1>
            Username<asp:TextBox ID="user" runat="server" /><br />
            Password<asp:TextBox ID="pass" runat="server" /><br />
            <asp:Button ID="b1" Text="Login" runat="server" PostBackUrl="Controller.aspx" />
            <asp:Button ID="b2" Text="Cancel" runat="server" />
        </div>
    </form>
</body>
</html>
 