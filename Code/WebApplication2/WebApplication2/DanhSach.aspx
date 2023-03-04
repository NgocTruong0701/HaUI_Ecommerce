<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="WebApplication2.DanhSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Danh sach</h1>

        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaMon" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaMon" HeaderText="Mã môn" ReadOnly="True" SortExpression="MaMon" />
                <asp:BoundField DataField="TenMon" HeaderText="Tên môn" SortExpression="TenMon" />
                <asp:BoundField DataField="MaKhoa" HeaderText="Mã khoa" SortExpression="MaKhoa" />
                <asp:BoundField DataField="SoTin" HeaderText="Số tín" SortExpression="SoTin" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" SortExpression="DonGia" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Ban co chac chan muon xoa')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLMonHocConnectionString %>" DeleteCommand="DELETE FROM [MonHoc] WHERE [MaMon] = @original_MaMon AND (([TenMon] = @original_TenMon) OR ([TenMon] IS NULL AND @original_TenMon IS NULL)) AND [MaKhoa] = @original_MaKhoa AND (([SoTin] = @original_SoTin) OR ([SoTin] IS NULL AND @original_SoTin IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL))" InsertCommand="INSERT INTO [MonHoc] ([MaMon], [TenMon], [MaKhoa], [SoTin], [DonGia]) VALUES (@MaMon, @TenMon, @MaKhoa, @SoTin, @DonGia)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MonHoc]" UpdateCommand="UPDATE [MonHoc] SET [TenMon] = @TenMon, [MaKhoa] = @MaKhoa, [SoTin] = @SoTin, [DonGia] = @DonGia WHERE [MaMon] = @original_MaMon AND (([TenMon] = @original_TenMon) OR ([TenMon] IS NULL AND @original_TenMon IS NULL)) AND [MaKhoa] = @original_MaKhoa AND (([SoTin] = @original_SoTin) OR ([SoTin] IS NULL AND @original_SoTin IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaMon" Type="String" />
                <asp:Parameter Name="original_TenMon" Type="String" />
                <asp:Parameter Name="original_MaKhoa" Type="String" />
                <asp:Parameter Name="original_SoTin" Type="Int32" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaMon" Type="String" />
                <asp:Parameter Name="TenMon" Type="String" />
                <asp:Parameter Name="MaKhoa" Type="String" />
                <asp:Parameter Name="SoTin" Type="Int32" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenMon" Type="String" />
                <asp:Parameter Name="MaKhoa" Type="String" />
                <asp:Parameter Name="SoTin" Type="Int32" />
                <asp:Parameter Name="DonGia" Type="Decimal" />
                <asp:Parameter Name="original_MaMon" Type="String" />
                <asp:Parameter Name="original_TenMon" Type="String" />
                <asp:Parameter Name="original_MaKhoa" Type="String" />
                <asp:Parameter Name="original_SoTin" Type="Int32" />
                <asp:Parameter Name="original_DonGia" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <a href="ThemDS.aspx">Them danh sach</a>
    </form>
</body>
</html>
