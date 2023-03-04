<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DSaas.aspx.cs" Inherits="Dbtest.DSaas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Danh Sach</h1>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True"></asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [MaLoai] = @original_MaLoai AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL))" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [MaLoai], [SoLuong], [DonGia]) VALUES (@MaSP, @TenSP, @MaLoai, @SoLuong, @DonGia)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [MaLoai] = @MaLoai, [SoLuong] = @SoLuong, [DonGia] = @DonGia WHERE [MaSP] = @original_MaSP AND [TenSP] = @original_TenSP AND [MaLoai] = @original_MaLoai AND (([SoLuong] = @original_SoLuong) OR ([SoLuong] IS NULL AND @original_SoLuong IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL))"></asp:SqlDataSource>




        </div>
    </form>
</body>
</html>
