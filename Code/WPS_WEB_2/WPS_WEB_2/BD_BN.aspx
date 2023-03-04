<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BD_BN.aspx.cs" Inherits="WPS_WEB_2.BD_BN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>List Student </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True"></asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLBenhNhan_1ConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [SoHD] = @original_SoHD AND (([MaBN] = @original_MaBN) OR ([MaBN] IS NULL AND @original_MaBN IS NULL)) AND (([MaK] = @original_MaK) OR ([MaK] IS NULL AND @original_MaK IS NULL)) AND (([SoNgay] = @original_SoNgay) OR ([SoNgay] IS NULL AND @original_SoNgay IS NULL))" InsertCommand="INSERT INTO [HoaDon] ([SoHD], [MaBN], [MaK], [SoNgay]) VALUES (@SoHD, @MaBN, @MaK, @SoNgay)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [MaBN] = @MaBN, [MaK] = @MaK, [SoNgay] = @SoNgay WHERE [SoHD] = @original_SoHD AND (([MaBN] = @original_MaBN) OR ([MaBN] IS NULL AND @original_MaBN IS NULL)) AND (([MaK] = @original_MaK) OR ([MaK] IS NULL AND @original_MaK IS NULL)) AND (([SoNgay] = @original_SoNgay) OR ([SoNgay] IS NULL AND @original_SoNgay IS NULL))"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLNVConnectionString %>" DeleteCommand="DELETE FROM [tblNhanVien] WHERE [MaNV] = @original_MaNV AND (([MaCV] = @original_MaCV) OR ([MaCV] IS NULL AND @original_MaCV IS NULL)) AND (([TenNV] = @original_TenNV) OR ([TenNV] IS NULL AND @original_TenNV IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([LuongCanBan] = @original_LuongCanBan) OR ([LuongCanBan] IS NULL AND @original_LuongCanBan IS NULL)) AND (([NgayCong] = @original_NgayCong) OR ([NgayCong] IS NULL AND @original_NgayCong IS NULL)) AND (([PhuCap] = @original_PhuCap) OR ([PhuCap] IS NULL AND @original_PhuCap IS NULL))" InsertCommand="INSERT INTO [tblNhanVien] ([MaNV], [MaCV], [TenNV], [NgaySinh], [LuongCanBan], [NgayCong], [PhuCap]) VALUES (@MaNV, @MaCV, @TenNV, @NgaySinh, @LuongCanBan, @NgayCong, @PhuCap)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblNhanVien]" UpdateCommand="UPDATE [tblNhanVien] SET [MaCV] = @MaCV, [TenNV] = @TenNV, [NgaySinh] = @NgaySinh, [LuongCanBan] = @LuongCanBan, [NgayCong] = @NgayCong, [PhuCap] = @PhuCap WHERE [MaNV] = @original_MaNV AND (([MaCV] = @original_MaCV) OR ([MaCV] IS NULL AND @original_MaCV IS NULL)) AND (([TenNV] = @original_TenNV) OR ([TenNV] IS NULL AND @original_TenNV IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([LuongCanBan] = @original_LuongCanBan) OR ([LuongCanBan] IS NULL AND @original_LuongCanBan IS NULL)) AND (([NgayCong] = @original_NgayCong) OR ([NgayCong] IS NULL AND @original_NgayCong IS NULL)) AND (([PhuCap] = @original_PhuCap) OR ([PhuCap] IS NULL AND @original_PhuCap IS NULL))"></asp:SqlDataSource>
    </form>
</body>
</html>
