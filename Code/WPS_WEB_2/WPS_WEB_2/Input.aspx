<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="WPS_WEB_2.Input" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nhap thong tin</title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <div class="boxCenter">
        <form id="form1" runat="server">
            <div>
                <h1 class="colorBlue">Thong tin nhan vien</h1>

                <div class="row">
                    <label for="txt_MaNV">Ma nhan vien</label>
                    <asp:TextBox ID="txt_MaNV" runat="server" />
                    <asp:RequiredFieldValidator ID="rMaNV" ControlToValidate="txt_MaNV" ErrorMessage="Ban phai nhap ma nhan vien" ForeColor="Red" runat="server" />
                </div>


                <div class="row">
                    <label for="txt_HoTen">Ho ten</label>
                    <asp:TextBox ID="txt_HoTen" runat="server" />
                    <asp:RegularExpressionValidator ID="rName" ControlToValidate="txt_HoTen" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z0-9]{5,50}" ErrorMessage="Ban phai nhap ten co it nhat 6 ki tu, khong bat dau bang so" ForeColor="Red" />
                </div>


                <div class="boxFlex">
                    <label for="rdo_gender">Gioi tinh</label>
                    <asp:RadioButtonList ID="rdo_gender" runat="server">
                        <asp:ListItem Text="Nam" Value="male" />
                        <asp:ListItem Text="Nu" Value="femal" />
                    </asp:RadioButtonList>
                </div>

                <div class="boxFlex">
                    <label for="chk_Languages">Ngoai ngu</label>
                    <asp:CheckBoxList ID="chk_Languages" runat="server">
                        <asp:ListItem Text="Anh" Value="english" />
                        <asp:ListItem Text="Phap" Value="france" />
                        <asp:ListItem Text="Nga" Value="russia" />
                    </asp:CheckBoxList>
                </div>



                <div class="row">
                    <label for="txt_BacLuong">Bac luong</label>
                    <asp:TextBox ID="txt_BacLuong" runat="server" />
                </div>

                <div class="row">
                    <label for="txt_SoNC">So ngay cong</label>
                    <asp:TextBox ID="txt_SoNC" runat="server" />
                    <asp:RequiredFieldValidator  ID="rSoNCHL" runat="server" ControlToValidate="txt_SoNC" ErrorMessage="Ban phai nhap so ngay cong" ForeColor="Red" Display="Dynamic" />
                    <asp:RangeValidator runat="server" ID="rSoNC" ControlToValidate="txt_SoNC" ErrorMessage="Ban phai nhap so tu 1 den 31" MinimumValue="1" MaximumValue="31" ForeColor="Red" Display="Dynamic" />
                </div>


                <div class="row">
                    <label for="ddl_ChucVu">Chuc vu</label>
                    <asp:DropDownList ID="ddl_ChucVu" runat="server">
                        <asp:ListItem Text="Truong phong" Value="truong phong" />
                        <asp:ListItem Text="Pho phong" Value="pho phong" />
                        <asp:ListItem Text="Nhan vien" Value="nhan vien" />

                    </asp:DropDownList>
                </div>

                <div class="row">
                    <label for="txt_User">User</label>
                    <asp:TextBox ID="txt_User" runat="server" />
                     <asp:RequiredFieldValidator  ID="rUserN" runat="server" ControlToValidate="txt_User" ErrorMessage="Ban phai nhap user" ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="rUser" ControlToValidate="txt_User" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z0-9]{5,50}" ErrorMessage="Ban phai nhap ten co it nhat 6 ki tu, khong bat dau bang so" ForeColor="Red" />
                </div>

                <div class="row">
                    <label for="txt_User">User</label>
                    <asp:TextBox ID="TextBox1" runat="server" />
                     <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_User" ErrorMessage="Ban phai nhap user" ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_User" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z0-9]{5,50}" ErrorMessage="Ban phai nhap ten co it nhat 6 ki tu, khong bat dau bang so" ForeColor="Red" />
                </div>

                <div class="row">
                    <label for="txt_Email">Email</label>
                    <asp:TextBox ID="txt_Email" runat="server" />
                     <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Email" ErrorMessage="Ban phai nhap user" ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txt_User" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z0-9]{5,50}" ErrorMessage="Ban phai nhap ten co it nhat 6 ki tu, khong bat dau bang so" ForeColor="Red" />
                </div>

                <div class="row">
                    <asp:Button CssClass="btn marginR_30" ID="btn_Calc" runat="server" Text="Tinh luong" PostBackUrl="~/Output.aspx" />
                    <asp:Button CssClass="btn" ID="btn_Reset" runat="server" Text="Nhap lai" />
                </div>
            </div>
        </form>

    </div>
</body>
</html>
