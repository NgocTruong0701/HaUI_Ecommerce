<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_In.aspx.cs" Inherits="Web_Sign_In.Sign_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                <asp:TextBox ID="FullName" runat="server" />
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
                <asp:TextBox ID="Password" runat="server" />
            </p>

            <p>
                <label>Go lai mat khau:</label>
                <asp:TextBox ID="RepeatPass" runat="server" />
            </p>

            <asp:Button ID="Send" Text="Send" runat="server" PostBackUrl="Show_Infor.aspx"/>
            <asp:Button ID="Reset" Text="Reset" runat="server" />


        </div>
    </form>
</body>
</html>
