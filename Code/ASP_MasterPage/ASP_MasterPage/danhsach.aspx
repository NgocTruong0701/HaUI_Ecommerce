<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="danhsach.aspx.cs" Inherits="ASP_MasterPage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Danh sach
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2>Danh sach sinh vien</h2>
    <asp:GridView runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="MaSV" HeaderText="Mã SV" ReadOnly="True" SortExpression="MaSV" />
            <asp:BoundField DataField="HoTen" HeaderText="Họ Tên SV" SortExpression="HoTen" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" SortExpression="GioiTinh" />
            <asp:BoundField DataField="MaLop" HeaderText="Mã lớp" SortExpression="MaLop" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Ban co chac chan muon xoa')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="MaSV" DataNavigateUrlFormatString="suasv.aspx?MaSV={0}" Text="Edit?" HeaderText="Edit" />
        </Columns>
    </asp:GridView>

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
