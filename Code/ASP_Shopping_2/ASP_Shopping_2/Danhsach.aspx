<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Danhsach.aspx.cs" Inherits="ASP_Shopping_2.Danhsach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Danh sach san pham
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Danh sach tat ca san pham</h1>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="15">
        <ItemTemplate>
            Pid:
            <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
            <br />
            Categoryid:
            <asp:Label ID="CategoryidLabel" runat="server" Text='<%# Eval("Categoryid") %>' />
            <br />
            ProdName:
            <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
            <br />
            MetaTitle:
            <asp:Label ID="MetaTitleLabel" runat="server" Text='<%# Eval("MetaTitle") %>' />
            <br />
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            <%--ImagePath:
            <asp:Label ID="ImagePathLabel" runat="server" Text='<%# Eval("ImagePath") %>' />--%>
            Image:
            <a href='Chitietsanpham.aspx?pid=<%# Eval("Pid")%>&name=<%# Eval("ProdName") %>&image=<%# Eval("ImagePath") %>&price=<%# Eval("Price") %>'>
                <asp:Image ID="Image" runat="server" ImageUrl='<%# "~/Images/"+ Eval("ImagePath")%>' Width="150" />
            </a>
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <br />
            <a href='ShoppingCart.aspx?pid=<%# Eval("Pid") %>&name=<%# Eval("ProdName") %>&image=<%# Eval("ImagePath") %>&price=<%# Eval("Price") %>&action=add' class="button">Mua hang</a>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>
