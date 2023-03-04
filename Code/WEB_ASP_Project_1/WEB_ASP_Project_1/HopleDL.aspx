<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HopleDL.aspx.cs" Inherits="WEB_ASP_Project_1.HopleDL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hop le du lieu</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>Thong tin sinh vien</h1>

                <p>
                    <label>Ho ten</label>
                    <asp:TextBox ID="txt_Name" runat="server" />
                    <asp:RequiredFieldValidator ID="chekName" ControlToValidate="txt_Name" ErrorMessage="Vui long nhap ten" ForeColor="Red" runat="server" />
                </p>

                <p>
                    <label>Tuoi</label>
                    <asp:TextBox ID="txt_Age" runat="server" ValidateRequestMode="Inherit" />
                    <asp:RangeValidator ID="checkAge" ControlToValidate="txt_Age" ErrorMessage="Ban phai nhap tuoi trong khoang 1 den 100" Type="Integer" MinimumValue="1"
                        MaximumValue="100" ForeColor="Red" runat="server" Display="Dynamic" ViewStateMode="Inherit" />
                    <asp:RequiredFieldValidator ID="checkInpuAge" ControlToValidate="txt_Age" ErrorMessage="Ban phai nhap tuoi" ForeColor="Red" runat="server"
                        Display="Dynamic" />
                </p>

                <p>
                    <label>Dien thoai</label>
                    <asp:TextBox ID="txt_PhoneNum" runat="server" />
                    <asp:RequiredFieldValidator Display="Dynamic" ID="checkInputP" ControlToValidate="txt_PhoneNum" ErrorMessage="Ban phai nhap so dien thoai" ForeColor="Red" runat="server" />
                    <asp:RegularExpressionValidator Display="Dynamic" ID="checkPhone" runat="server" ControlToValidate="txt_PhoneNum" ErrorMessage="Ban phai nhap so dien thoai la 10 so" ForeColor="Red" ValidationExpression="\d+" ></asp:RegularExpressionValidator>
                </p>

                <p>
                    <label>Email</label>
                    <asp:TextBox ID="txt_Email" runat="server" />
                    <asp:RequiredFieldValidator ID="checkInputE" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Vui long nhap email" runat="server" ForeColor="Red" />
                    <asp:RegularExpressionValidator Display="Dynamic" ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_Email" ErrorMessage="Vui long ghi email dung dinh dang" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
                </p>

                <p>
                    <label>Ten dang nhap</label>
                    <asp:TextBox ID="txt_NameACC" runat="server" />
                    <asp:RequiredFieldValidator ID="checkInputN" ControlToValidate="txt_NameACC" Display="Dynamic" ErrorMessage="Vui long nhap ten dang nhap" runat="server" ForeColor="Red"/>
                    <asp:RegularExpressionValidator Display="Dynamic" runat="server" ID="checkNameAcc" ControlToValidate="txt_NameACC" ErrorMessage="Vui long nhap ten dang nhap toi thieu 5 ki tu bat dau bang ki tu"
                         ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z0-9]{4,}" />
                </p>

                <p>
                    <label>Mat khau</label>
                    <asp:TextBox ID="txt_Password" runat="server" />
                   <asp:RequiredFieldValidator ID="checkIPPass" ControlToValidate="txt_Password" ErrorMessage="Vui long nhap mat khau" ForeColor="Red" runat="server" Display="Dynamic" /> 
                    <asp:RegularExpressionValidator Display="Dynamic" runat="server" ID="checkPass" ControlToValidate="txt_Password" ErrorMessage="Mat khau toi thieu 5 ki tu" ForeColor="Red"
                         ValidationExpression=".{5,}" />
                </p>

                <p>
                    <label>Go lai mat khau</label>
                    <asp:TextBox ID="txt_RePassword" runat="server" />
                    <asp:RequiredFieldValidator ID="checkInputReP" ControlToValidate="txt_RePassword" ErrorMessage="Vui long nhap lai mat khau" ForeColor="Red" runat="server" Display="Dynamic" />
                    <asp:CompareValidator ID="checkTrung" ControlToValidate="txt_RePassword" Display="Dynamic" ControlToCompare="txt_Password" ErrorMessage="Nhap mat khau lai chua khop" ForeColor="Red" runat="server" />


                <p>
                    <asp:Button ID="btn_Send" runat="server" Text="Send" PostBackUrl="~/Output.aspx" />
                    <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" />
                </p>
            </div>
        </div>
    </form>
</body>
</html>
