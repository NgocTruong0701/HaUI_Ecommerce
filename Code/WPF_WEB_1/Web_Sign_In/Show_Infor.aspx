<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_Infor.aspx.cs" Inherits="Web_Sign_In.Show_Infor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Information</title>
    <style>
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: red">Thong tin cua ban</h1>
             
            <% 
                TextBox txtname = (TextBox)Page.PreviousPage.FindControl("FullName");
                string name = txtname.Text;
                Response.Write("Name: + " + name + "\n");
            %>

           
        </div>
    </form>
</body>
</html>
