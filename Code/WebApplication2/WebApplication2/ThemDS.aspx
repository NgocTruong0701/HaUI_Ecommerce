<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemDS.aspx.cs" Inherits="WebApplication2.ThemDS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Them danh sach</h1>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaMon" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted"> 
                <EditItemTemplate>
                    MaMon:
                    <asp:Label ID="MaMonLabel1" runat="server" Text='<%# Eval("MaMon") %>' />
                    <br />
                    TenMon:
                    <asp:TextBox ID="TenMonTextBox" runat="server" Text='<%# Bind("TenMon") %>' />
                    <br />
                    MaKhoa:
                    <asp:TextBox ID="MaKhoaTextBox" runat="server" Text='<%# Bind("MaKhoa") %>' />
                    <br />
                    SoTin:
                    <asp:TextBox ID="SoTinTextBox" runat="server" Text='<%# Bind("SoTin") %>' />
                    <br />
                    DonGia:
                    <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Mã môn:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="MaMonTextBox" runat="server" Text='<%# Bind("MaMon") %>' style="margin-left: 2px" />
                    <br />
                    Tên môn:&nbsp;&nbsp;
                    <asp:TextBox ID="TenMonTextBox" runat="server" Text='<%# Bind("TenMon") %>' Height="16px" style="margin-left: 4px" Width="118px" />
                    <br />
                    Mã khoa:&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TenKhoa" DataValueField="MaKhoa" Height="16px" SelectedValue='<%# Bind("MaKhoa") %>' style="margin-left: 8px" Width="120px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLMonHocConnectionString3 %>" SelectCommand="SELECT * FROM [Khoa]"></asp:SqlDataSource>
                    <br />
                    Số tín:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="SoTinTextBox" runat="server" Text='<%# Bind("SoTin") %>' style="margin-left: 6px" />
                    <br />
                    Đơn giá:<asp:TextBox ID="MaKhoaTextBox" runat="server" Text='<%# Bind("MaKhoa") %>' Height="16px" OnTextChanged="MaKhoaTextBox_TextChanged" style="margin-left: 23px" Width="119px" />
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLMonHocConnectionString2 %>" SelectCommand="SELECT * FROM [Khoa]"></asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    MaMon:
                    <asp:Label ID="MaMonLabel" runat="server" Text='<%# Eval("MaMon") %>' />
                    <br />
                    TenMon:
                    <asp:Label ID="TenMonLabel" runat="server" Text='<%# Bind("TenMon") %>' />
                    <br />
                    MaKhoa:
                    <asp:Label ID="MaKhoaLabel" runat="server" Text='<%# Bind("MaKhoa") %>' />
                    <br />
                    SoTin:
                    <asp:Label ID="SoTinLabel" runat="server" Text='<%# Bind("SoTin") %>' />
                    <br />
                    DonGia:
                    <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLMonHocConnectionString %>" DeleteCommand="DELETE FROM [MonHoc] WHERE [MaMon] = @MaMon" InsertCommand="INSERT INTO [MonHoc] ([MaMon], [TenMon], [MaKhoa], [SoTin], [DonGia]) VALUES (@MaMon, @TenMon, @MaKhoa, @SoTin, @DonGia)" SelectCommand="SELECT * FROM [MonHoc]" UpdateCommand="UPDATE [MonHoc] SET [TenMon] = @TenMon, [MaKhoa] = @MaKhoa, [SoTin] = @SoTin, [DonGia] = @DonGia WHERE [MaMon] = @MaMon">
                <DeleteParameters>
                    <asp:Parameter Name="MaMon" Type="String" />
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
                    <asp:Parameter Name="MaMon" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red" />

            <br />
            <a href="DanhSach.aspx">Danh sach</a>
        </div>
    </form>
</body>
</html>
