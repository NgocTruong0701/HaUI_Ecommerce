<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="ASP_Shopping_2.Chitietsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Chi tiet sp <%# Eval("ProdName") %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Chi tiet san pham</h1>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="115px" Width="311px" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <%--<asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />--%>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image" runat="server" ImageUrl='<%# "~/Images/" + Eval("ImagePath") %>' Height="200" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:TemplateField HeaderText="Mua hang">
                <ItemTemplate>
                     <a href="ShoppingCart.aspx?pid=<%= pid %>&name=<%= name %>&image=<%= image %>&price=<%=price %>&action=add" class="button">Mua hàng</a>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" SelectCommand="SELECT * FROM [Product] where Pid=@Pid">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pid" Type="Int16" QueryStringField="Pid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
