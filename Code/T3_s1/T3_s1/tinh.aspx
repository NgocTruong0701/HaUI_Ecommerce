<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tinh.aspx.cs" Inherits="T3_s1.tinh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                float nt = float.Parse(Request["nhietdo"]);
                RadioButtonList rdo = (RadioButtonList)Page.PreviousPage.FindControl("loainhietdo");
                
                //string loai = Request.Form["loainhietdo"];
                float kq = 0;
                //Response.Write(loai);
                if(rdo.Text == "Nhietdoc")
                {
                    
                    kq = ((nt - 32) * 5 / 9);
                }
                else
                {
                    kq = ((nt * 9 / 5) + 32);
                }
            %>

            <h1>Ket qua la : <%= kq %></h1>
        </div>
    </form>
</body>
</html>
