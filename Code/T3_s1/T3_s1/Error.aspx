<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="T3_s1.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Error</h1>
              <h2>Welcome <%= Request.Form["user"] %></h2>
            <asp:Label ForeColor="Red" Text="Invalid user or pass" runat="server" />
        </div>
    </form>
</body>
</html>
