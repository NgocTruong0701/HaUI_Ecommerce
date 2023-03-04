<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NhietDo.aspx.cs" Inherits="T3_s1.NhietDo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Doi nhiet do</h1>
            <label>Nhap vao nhiet do</label>
            <asp:TextBox ID="nhietdo" runat="server"  ></asp:TextBox>
            <br />
            <label>Chon loai nhiet do</label>
            <asp:RadioButtonList ID="loainhietdo" runat="server">
                <asp:ListItem Value="Nhietdoc"></asp:ListItem>
                <asp:ListItem Value="Nhietdof"></asp:ListItem>

            </asp:RadioButtonList>
            <asp:Button ID="ketqua" Text="Chuyen doi" runat="server" PostBackUrl="~/tinh.aspx"/>
        </div>

    </form>
</body>
</html>
