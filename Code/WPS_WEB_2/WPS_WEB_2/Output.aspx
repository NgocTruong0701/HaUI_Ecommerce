<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="WPS_WEB_2.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Information</title>
    <link rel="stylesheet" href="styles_out.css" />
</head>
<body>
    
    <form id="form1" runat="server">
        <div>

            <%
        string MaNV = Request.Form["txt_MaNV"];
        string HoTen = Request.Form["txt_HoTen"];
        RadioButtonList Gender = (RadioButtonList)Page.PreviousPage.FindControl("rdo_Gender");
        CheckBoxList Language = (CheckBoxList)Page.PreviousPage.FindControl("chk_Languages");
        string languages ="";
        foreach(ListItem i in Language.Items)
        {
            if(i.Selected)
            {
                languages += i.Text + " ";
            }
        }

        string BacLuong = Request.Form["txt_BacLuong"];
        string SoNC = Request.Form["txt_SoNC"];

        DropDownList Item = (DropDownList)this.PreviousPage.FindControl("ddl_ChucVu");


        %>
            <h1>Tinh luong nhan vien</h1>

            <table>
                <tr>
                    <th>Ma nhan vien</th>
                    <td><%Response.Write(MaNV); %></td>
                </tr>
                <tr>
                    <th>Ho ten</th>
                    <td><%Response.Write(HoTen); %></td>
                </tr>
                <tr>
                    <th>Gioi tinh</th>
                    <td><%= Gender.SelectedItem.Text %></td>
                </tr>
                <tr>
                    <th>Ngoai ngu</th>
                    <td><%= languages %></td>
                </tr>
                <tr>
                    <th>Bac luong</th>
                    <td><%= BacLuong %></td>
                </tr>
                <tr>
                    <th>Luong co ban</th>
                    <td><%double luongcb = 800000; Response.Write(luongcb);%></td>
                </tr>
                <tr>
                    <th>Ngay cong</th>
                    <td><%= SoNC %></td>
                </tr>
                <tr>
                    <th>Chuc vu</th>
                    <td><%= Item.SelectedItem.Text%></td>
                </tr>
                <tr>
                    <th>Thuong</th>
                    <td>
                        <%
                            double thuong = 0;
                            if(int.Parse(SoNC) > 25) {
                                thuong = (int.Parse(SoNC) - 25) * 200000;
                            }
                            Response.Write(thuong);
                        %>
                    </td>
                </tr>
                <tr>
                    <th>Phu cap</th>
                    <td><%
                            double phucap = 0;
                            if(Item.SelectedItem.Text == "Truong phong") {
                                phucap = 500000;
                            }
                            else if(Item.SelectedItem.Text == "Pho phong") {
                                phucap = 300000;
                            }
                            else if(Item.SelectedItem.Text == "Nhan vien") {
                                phucap = 100000;
                            }
                            Response.Write(phucap);
                        %>
                    </td>
                </tr>
                 <tr>
                    <th>Tong luong</th>
                    <td><%= luongcb*int.Parse(BacLuong) + thuong + phucap%></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
