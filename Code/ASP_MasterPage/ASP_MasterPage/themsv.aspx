<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="themsv.aspx.cs" Inherits="ASP_MasterPage.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Them sinh vien
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2>Them sinh vien</h2>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">
        <InsertItemTemplate>
            Mã SV:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_MaSV" runat="server" Text='<%# Bind("MaSV") %>' Height="16px" Width="116px" />
            <asp:RequiredFieldValidator ControlToValidate="txt_MaSV" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng mã sinh viên"></asp:RequiredFieldValidator>
            <br />
            Họ Tên:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' Height="16px" style="margin-left: 0px" Width="114px" />
            <br />
            Ngày sinh:
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' Height="16px" Width="116px" />
            <br />
            Giới tính:&nbsp;&nbsp;
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' Width="115px" />
            <br />
            Mã lớp:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLop" DataValueField="MaLop" Height="17px" SelectedValue='<%# Bind("MaLop") %>' Width="129px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSinhVienConnectionString %>" SelectCommand="SELECT * FROM [Lop]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            MaSV:
            <asp:Label ID="MaSVLabel" runat="server" Text='<%# Eval("MaSV") %>' />
            <br />
            HoTen:
            <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            NgaySinh:
            <asp:Label ID="NgaySinhLabel" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            GioiTinh:
            <asp:Label ID="GioiTinhLabel" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            MaLop:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenLop" DataValueField="MaLop" Height="16px" Width="125px" SelectedValue='<%# Bind("MaLop") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLSinhVienConnectionString2 %>" SelectCommand="SELECT * FROM [Lop]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSinhVienConnectionString %>" DeleteCommand="DELETE FROM [SinhVien] WHERE [MaSV] = @MaSV" InsertCommand="INSERT INTO [SinhVien] ([MaSV], [HoTen], [NgaySinh], [GioiTinh], [MaLop]) VALUES (@MaSV, @HoTen, @NgaySinh, @GioiTinh, @MaLop)" SelectCommand="SELECT * FROM [SinhVien]" UpdateCommand="UPDATE [SinhVien] SET [HoTen] = @HoTen, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh, [MaLop] = @MaLop WHERE [MaSV] = @MaSV">
        <DeleteParameters>
            <asp:Parameter Name="MaSV" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaSV" Type="String" />
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="MaLop" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="MaLop" Type="String" />
            <asp:Parameter Name="MaSV" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
