<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sach</h2>
            <asp:GridView runat="server" ID="ctl00" AutoGenerateColumns="False" DataKeyNames="MaMon" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="ctl00_SelectedIndexChanged"></asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLMonHocConnectionString %>" DeleteCommand="DELETE FROM [MonHoc] WHERE [MaMon] = @original_MaMon AND (([TenMon] = @original_TenMon) OR ([TenMon] IS NULL AND @original_TenMon IS NULL)) AND [MaKhoa] = @original_MaKhoa AND (([SoTin] = @original_SoTin) OR ([SoTin] IS NULL AND @original_SoTin IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL))" InsertCommand="INSERT INTO [MonHoc] ([MaMon], [TenMon], [MaKhoa], [SoTin], [DonGia]) VALUES (@MaMon, @TenMon, @MaKhoa, @SoTin, @DonGia)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MonHoc]" UpdateCommand="UPDATE [MonHoc] SET [TenMon] = @TenMon, [MaKhoa] = @MaKhoa, [SoTin] = @SoTin, [DonGia] = @DonGia WHERE [MaMon] = @original_MaMon AND (([TenMon] = @original_TenMon) OR ([TenMon] IS NULL AND @original_TenMon IS NULL)) AND [MaKhoa] = @original_MaKhoa AND (([SoTin] = @original_SoTin) OR ([SoTin] IS NULL AND @original_SoTin IS NULL)) AND (([DonGia] = @original_DonGia) OR ([DonGia] IS NULL AND @original_DonGia IS NULL))"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
