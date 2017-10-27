<%@ Page Title="" Language="C#" MasterPageFile="~/Company_Master_Page.master" AutoEventWireup="true" CodeFile="User_Landing_Page.aspx.cs" Inherits="User_Landing_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Body_Content_Holder" Runat="Server">
    <asp:GridView ID ="Cat1_GridView" runat ="server" DataSourceID ="Category1Products"></asp:GridView>
    <asp:SqlDataSource ID ="Category1Products" runat ="server" ConnectionString ="<%$ConnectionStrings:GroceryStore%>" SelectCommand ="SELECT * FROM ITEMS WHERE CATEGORY = '1'"></asp:SqlDataSource>
    <asp:GridView ID ="Cat2_GridView" runat ="server" DataSourceID ="Category2Products" AutoGenerateColumns ="False" AllowSorting ="True" AllowPaging ="True" PageSize ="2">
        <Columns>
        <asp:BoundField DataField ="Name" HeaderText ="Name" ReadOnly ="True"/>
        <asp:BoundField DataField ="BestBy" HeaderText ="BestBy" ReadOnly ="True" SortExpression ="BestBy"/>
        <asp:BoundField DataField ="Price" HeaderText ="Price" ReadOnly ="True" SortExpression ="Price"/>
        <asp:CommandField ShowSelectButton ="true" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID ="Category2Products" runat ="server" ConnectionString ="<%$ConnectionStrings:GroceryStore%>" SelectCommand ="SELECT * FROM ITEMS WHERE CATEGORY = '2'" ></asp:SqlDataSource>
</asp:Content>

