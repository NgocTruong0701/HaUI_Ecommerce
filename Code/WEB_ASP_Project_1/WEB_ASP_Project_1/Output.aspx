<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="WEB_ASP_Project_1.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hien thi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Thong tin cua ban</h1>

            <table>
                <tr>
                    <th>Ho ten</th>
                    <td><%Response.Write(Request.Form["txt_Name"]); %></td>
                </tr>
                <tr>
                    <th>Tuoi</th>
                    <td><%Response.Write(Request.Form["txt_Age"]); %></td>
                </tr>
                <tr>
                    <th>Dien thoai</th>
                    <td><%= Request.Form["txt_PhoneNum"] %></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><%= Request.Form["txt_Email"] %></td>
                </tr>
                <tr>
                    <th>Ten dang nhap</th>
                    <td><%= Request.Form["txt_NameACC"] %></td>
                </tr>
                 <tr>
                    <th>Mat khau</th>
                    <td><%= Request.Form["txt_Password"] %></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
