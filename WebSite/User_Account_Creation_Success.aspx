<%@ Page Title="" Language="C#" MasterPageFile="~/Company_Master_Page.master" AutoEventWireup="true" CodeFile="User_Account_Creation_Success.aspx.cs" Inherits="User_Account_Creation_Success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_StyleSheets/Login_Stylesheet.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Refresh" content="5;url=Login.aspx" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body_Content_Holder" Runat="Server">
    <div class="loginbox" id ="login_box">
    <asp:Label ID ="Success_Label" runat ="server" Text ="Registration Successful" CssClass ="biglabel"></asp:Label>
     <hr />
    <asp:Label ID ="Description_Label" runat ="server" Text ="Your Registration was successful! Redirecting you to sign in page to sign in..."></asp:Label>
    </div>
</asp:Content>

