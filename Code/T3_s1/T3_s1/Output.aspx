<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="T3_s1.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        label{
            display:block;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server" >

        <div>
            <h1>Your information</h1>
            <%
                string name = Request.QueryString["name"];
                string gender = Request.QueryString["gender"];
                string address = Request.QueryString["address"];
                string subject = Request.QueryString["subject"];
                //string name = Request.Form["name"];
                //string gender = Request.Form["gender"];
                //string address = Request.Form["address"];
                //string subject = Request.Form["subject"];
                %>

            Name: <% Response.Write(name); %><br />
            Gender: <%= gender %><br />
            Name: <%=address%><br />
            Name: <%=subject %><br />

            <br />
            <%
                for (int i = 0; i < 1000; i++)
                {
                    Response.Write(i + " ");
                }
                %>
        </div>

    </form>
    
</body>
</html>
