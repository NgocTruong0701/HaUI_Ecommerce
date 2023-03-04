<%@ Page Title="" Language="C#" MasterPageFile="~/MySite.Master" AutoEventWireup="true" CodeBehind="ChitietSanpham.aspx.cs" Inherits="Proj_ShoppingOnline.ChitietSanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Chi tiết sản phẩm
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Chi tiết sản phẩm</h1>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="180px" Width="291px"
        AutoGenerateRows="False" DataKeyNames="Pid" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" SortExpression="Categoryid" />
            <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
            <asp:BoundField DataField="MetaTitle" HeaderText="MetaTitle" SortExpression="MetaTitle" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
          <%--  <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />--%>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="img1" runat="server"
                        ImageUrl='<%# "~/Images/"+Eval("ImagePath") %>' Height="200" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Fields>

    </asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ECartDB2ConnectionString4 %>" 
    SelectCommand="SELECT * FROM [Product] where pid=@pid">
    <SelectParameters>
        <asp:QueryStringParameter Name="pid" Type="Int16" QueryStringField="pid" />
    </SelectParameters>
    
</asp:SqlDataSource>
</asp:Content>
