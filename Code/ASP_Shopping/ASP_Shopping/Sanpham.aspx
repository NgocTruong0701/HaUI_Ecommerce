<%@ Page Title="" Language="C#" MasterPageFile="~/FormPage.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="ASP_Shopping.Sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Chi tiet san pham
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <h2>Chi tiet san pham</h2>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="254px" AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:TemplateField HeaderText="Anh">
                <ItemTemplate>
                    <asp:Image ID="Image" runat="server" ImageUrl='<%# "~/Images/"+Eval("ImagePath") %>' Height="200" />
                </ItemTemplate>
            </asp:TemplateField> 
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString %>" SelectCommand="SELECT * FROM [Product] where pid = @pid">
        <SelectParameters>
            <asp:QueryStringParameter Name="pid" Type="Int16" QueryStringField="pid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
