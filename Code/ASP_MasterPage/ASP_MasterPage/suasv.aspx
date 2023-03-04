<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="suasv.aspx.cs" Inherits="ASP_MasterPage.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Sua sinh vien
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" DefaultMode="Edit">
        <EditItemTemplate>
            MaSV:
            <asp:Label ID="MaSVLabel1" runat="server" Text='<%# Eval("MaSV") %>' />
            <br />
            HoTen:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            NgaySinh:
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            GioiTinh:&nbsp;
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' style="margin-left: 3px" />
            <br />
            MaLop:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TenLop" DataValueField="MaLop" Height="17px" SelectedValue='<%# Bind("MaLop") %>' style="margin-left: 24px" Width="125px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSinhVienConnectionString %>" SelectCommand="SELECT * FROM [Lop]"></asp:SqlDataSource>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            MaSV:
            <asp:TextBox ID="MaSVTextBox" runat="server" Text='<%# Bind("MaSV") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            NgaySinh:
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            GioiTinh:
            <asp:TextBox ID="GioiTinhTextBox" runat="server" Text='<%# Bind("GioiTinh") %>' />
            <br />
            MaLop:
            <asp:TextBox ID="MaLopTextBox" runat="server" Text='<%# Bind("MaLop") %>' />
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
            <asp:Label ID="MaLopLabel" runat="server" Text='<%# Bind("MaLop") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLSinhVienConnectionString %>"

        SelectCommand="SELECT * FROM [SinhVien] where [MaSV] = @MaSV"
        UpdateCommand="UPDATE [SinhVien] SET [HoTen] = @HoTen, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh, [MaLop] = @MaLop WHERE [MaSV] = @MaSV" OnUpdated="SqlDataSource1_Updated">
        
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSV" Type="String" QueryStringField="MaSV" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="MaLop" Type="String" />
            <asp:Parameter Name="MaSV" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
