<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Danhsachtheodanhmuc.aspx.cs" Inherits="ASP_Shopping_3.Danhsachtheomuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Danh sach theo muc
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
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
            Image:
            <br />
            <a href='/Chitietsanpham.aspx?pid=<%# Eval("Pid")%>&name=<%# Eval("ProdName") %>&image=<%# Eval("ImagePath") %>&price=<%# Eval("Price") %>'>
                <asp:Image ID="Image" runat="server" ImageUrl='<%# "~/Images/" + Eval("ImagePath") %>' Width="150" />
            </a>
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            <a href='ShoppingCart.aspx?pid=<%# Eval("Pid") %>&name=<%# Eval("ProdName") %>&image=<%# Eval("ImagePath") %>&price=<%# Eval("Price") %>&action=add' class="button">Mua hang</a>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" SelectCommand="SELECT * FROM [Product] where categoryid=@categoryid">
        <SelectParameters>
            <asp:QueryStringParameter Name="categoryid" Type="Int16" QueryStringField="categoryid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
