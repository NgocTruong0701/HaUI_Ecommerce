<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="DanhsachTheoDanhmuc.aspx.cs" Inherits="Proj_ShoppingOnline.DanhsachTheoDanhmuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid"
            DataSourceID="SqlDataSource1"
            RepeatColumns="3" RepeatDirection="Horizontal">
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

                <asp:Image ID="img" runat="server"
                    ImageUrl='<%# "~/Images/"+Eval("ImagePath") %>' Width="150" />
                <br />
                Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                <a href='ChitietSanpham.aspx?pid=<%# Eval("pid") %>'>Chi tiết sản phẩm</a>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString3 %>"
            SelectCommand="SELECT * FROM [Product] where categoryid=@categoryid">
            <SelectParameters>
                <asp:QueryStringParameter Name="categoryid" Type="Int16"
                    QueryStringField="categoryid" />
            </SelectParameters>

        </asp:SqlDataSource>
        <br />
    </p>

</asp:Content>
