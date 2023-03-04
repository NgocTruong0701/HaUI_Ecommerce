<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowInfor.aspx.cs" Inherits="WPF_WEB_1.ShowInfor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Information</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: red">Thong tin cua ban</h1>
             
            <p>Ho ten: <%Response.Write(Request.Form["HoTen"]);%></p>
            <p>Tuoi: <%Response.Write(Request.Form["Age"]);%></p>
            <p>Dien thoai: <%= Request.Form["Phone"]%></p>
            <p>Email: <%= Request.Form["Email"]%></p>
            <p>Ten dang nhap: <%= Request.Form["NameAcc"]%></p>
            <p>Mat khau: <%= Request.Form["Password"]%></p>
        </div>
    </form>
</body>
</html>
