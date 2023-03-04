<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WPF_WEB_1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Sign In</title>
    <style type="text/css">
        label {
            width: 120px;
            float: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Thong tin sinh vien</h1>
            <p>
                <label>Ho ten:</label>
                <asp:TextBox ID="HoTen" runat="server" />
            </p>

            <p>
                <label>Tuoi:</label>
                <asp:TextBox ID="Age" runat="server" />
            </p>

            <p>
                <label>Dien thoai:</label>
                <asp:TextBox ID="Phone" runat="server" />
            </p>

            <p>
                <label>Email:</label>
                <asp:TextBox ID="Email" runat="server" />
            </p>

            <p>
                <label>Ten dang nhap:</label>
                <asp:TextBox ID="NameAcc" runat="server" />
            </p>

            <p>
                <label>Mat khau:</label>
                <asp:TextBox TextMode="Password" ID="Password" runat="server" />
            </p>

            <p>
                <label>Go lai mat khau:</label>
                <asp:TextBox TextMode="Password" ID="RepeatPass" runat="server" />
            </p>

            <asp:Button ID="Send" Text="Send" runat="server" PostBackUrl="~/ShowInfor.aspx" />
            <asp:Button ID="Reset" Text="Reset" runat="server" />

        </div>
    </form>
</body>
</html>
