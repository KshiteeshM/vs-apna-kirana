<%@ Page Title="" Language="C#" MasterPageFile="~/Company_Master_Page.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Head_Content" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_StyleSheets/Login_Stylesheet.css" rel="stylesheet" type="text/css" />
</asp:Content> 

<asp:Content ID="Login_Content" ContentPlaceHolderID="Body_Content_Holder" Runat="Server">
    <div class="loginbox" id ="login_box">
    <asp:Label ID ="Login_Label" runat ="server" Text ="Login" CssClass ="biglabel"></asp:Label>
     <hr />
    <br /><br />
    <asp:Label ID ="Username_Label" runat ="server" Text ="Username or Email" CssClass ="smalllabel"></asp:Label>
    <br /> 
    <asp:TextBox ID="Username_TextBox" runat="server" Text ="" placeholder ="" CssClass ="inputbox"></asp:TextBox>
    <br /><br />
     <asp:RequiredFieldValidator ID ="Username_Req_Validator" runat ="server"
        ControlToValidate ="Username_TextBox" ErrorMessage ="Username is Mandatory" Display ="None"></asp:RequiredFieldValidator>
    <asp:Label ID ="Password_Label" runat ="server" Text="Password" CssClass ="smalllabel"></asp:Label>
    <br />
    <asp:TextBox ID ="Password_TextBox" runat ="server" TextMode="Password" placeholder ="" CssClass ="inputbox"></asp:TextBox>
     <asp:RequiredFieldValidator ID ="Password_Req_Validator" runat ="server"
        ControlToValidate ="Password_TextBox" ErrorMessage ="Password is Mandatory" Display ="None"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Button ID ="Submit_Button" runat ="server" Text ="Submit" CssClass ="submitbutton" OnClick="Submit_Button_Click" />
    <br /><br />
    <asp:CheckBox ID ="Signed_In_CB" runat ="server" Text ="Keep me Signed In" CssClass ="smalllabel"/>
    <br /><br />
    <hr style ="color: burlywood"/>
    <asp:Label ID ="Account_Creation_Label" runat ="server" Text= "New to Apna Kirana?" CssClass ="acccreatlabel"></asp:Label>
    <br /><br />
    <asp:Button ID ="Account_Creation_Button" runat="server" Text = "Create New Account" CssClass ="acccreatbutton" OnClick="Account_Creation_Button_Click" CausesValidation="False"/>
    <br /><br />
    <asp:Label ID ="Error_Label" runat ="server" Text ="" CssClass ="rederror"></asp:Label>
    <asp:ValidationSummary ID ="Validator" runat ="server" CssClass ="rederror" HeaderText =""/> 
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

