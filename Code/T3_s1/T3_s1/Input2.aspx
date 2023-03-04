<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input2.aspx.cs" Inherits="T3_s1.Input2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"  >
        <div>
            <asp:Label runat="server" Text="Student Information" 
                Font-Size="XX-Large" ForeColor="Magenta" />

            <table width="500">
                <tr>
                    <td>Name</td>
                    <td><asp:TextBox ID="txtName" runat="server"/></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td> 
                        <asp:RadioButtonList ID="radGender" runat="server">
                            <asp:ListItem Value="Male" />
                            <asp:ListItem Value="Female" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                 <tr>
                    <td>Address</td>
                    <td> 
                        <asp:DropDownList ID="ddlAddress" runat="server">
                            <asp:ListItem Value="Ha noi" />
                            <asp:ListItem Value="Hai phong" />
                            <asp:ListItem Value="Quang ninh" />
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>Subject</td>  
                    <td> 
                        <asp:CheckBoxList ID="chkSubject" runat="server">
                            <asp:ListItem Value="C#" />
                            <asp:ListItem Value="Java" />
                            <asp:ListItem Value="PHP" />
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="b1" Text="Send" runat="server" PostBackUrl="Output2.aspx" />
                        <asp:Button ID="b2" Text="Cancel" runat="server" />
                    </td>
                </tr>                               
            </table>
        </div>
    </form>
    <br />

    <asp:Label ID="lbl1" runat="server" /><br />
    <asp:Label ID="lbl2" runat="server" /><br />
    <asp:Label ID="lbl3" runat="server" /><br />
    <asp:Label ID="lbl4" runat="server" /><br />

</body>
</html>
