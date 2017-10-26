<%@ Page Title="" Language="C#" MasterPageFile="~/Company_Master_Page.master" AutoEventWireup="true" CodeFile="User_Account_Creation_Page.aspx.cs" Inherits="User_Account_Creation_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="App_StyleSheets/User_Creation_Stylesheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body_Content_Holder" Runat="Server">
    <div class="loginbox" id ="login_box">
    <asp:Label ID ="Register_Label" runat ="server" Text ="User Registration" CssClass ="biglabel"></asp:Label>
     <hr />
    <br /><br />
    <asp:Label ID ="Username_Label" runat ="server" Text ="Enter Username" CssClass ="smalllabel"></asp:Label>
    <br /> 
    <asp:TextBox ID="Username_TextBox" runat="server" Text ="" placeholder ="Enter something unique" CssClass ="inputbox"></asp:TextBox>
    <br /><br />
    <asp:RequiredFieldValidator ID ="Username_Req_Validator" runat ="server"
        ControlToValidate ="Username_TextBox" ErrorMessage ="Username is Mandatory" Display ="None"></asp:RequiredFieldValidator>
    <asp:Label ID ="Password_Label" runat ="server" Text="Password" CssClass ="smalllabel"></asp:Label>
    <br />
    <asp:TextBox ID ="Password_TextBox" runat ="server" TextMode="Password" placeholder ="Password" CssClass ="inputbox"></asp:TextBox>
    <br /><br />
    <asp:Label ID ="Password_Confirmation_Label" runat ="server" Text="Confirm Password" CssClass ="smalllabel"></asp:Label>
    <br />
    <asp:TextBox ID ="Password_Confirmation_TextBox" runat ="server" TextMode="Password" placeholder ="" CssClass ="inputbox"></asp:TextBox>
    <br /><br />
    <asp:RequiredFieldValidator ID ="Password_Req_Validator" runat ="server"
        ControlToValidate ="Password_TextBox" ErrorMessage ="Password is Mandatory" Display ="None"></asp:RequiredFieldValidator>

    <asp:RequiredFieldValidator ID ="Confirm_Password_Req_Validator" runat ="server"
        ControlToValidate ="Password_Confirmation_TextBox" ErrorMessage ="Confirmation of Password is Mandatory" Display ="None"></asp:RequiredFieldValidator>
    <asp:CompareValidator id="comparePasswords" runat="server"
              ControlToCompare="Password_TextBox"
              ControlToValidate="Password_Confirmation_TextBox"
              ErrorMessage="Your passwords do not match up!"
              Display="None" />
    <br /><br />
    <asp:Label ID ="Email_Label" runat ="server" Text="Enter Email" CssClass ="smalllabel"></asp:Label>
    <br />
    <asp:TextBox ID ="Email_TextBox" runat ="server" TextMode="SingleLine" placeholder ="Email" CssClass ="inputbox"></asp:TextBox>
    <asp:RegularExpressionValidator ID ="Email_Validatior" ControlToValidate ="Email_TextBox" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display ="None" Text ="Email is not of valid format"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID ="Email_Req_Validator" runat ="server"
        ControlToValidate ="Email_TextBox" ErrorMessage ="Email is Mandatory" Display ="None" ></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Label ID ="Address_Label" runat ="server" Text="Address" CssClass ="smalllabel"></asp:Label>
    <br />
    <asp:TextBox ID ="Address_TextBox" runat ="server" TextMode="MultiLine" placeholder ="" CssClass ="inputbox"></asp:TextBox>
    <br /><br />
    <asp:RequiredFieldValidator ID ="Address_Req_Validator" runat ="server"
        ControlToValidate ="Address_TextBox" ErrorMessage ="Address is Mandatory" Display ="None"
        ></asp:RequiredFieldValidator>
    <asp:Label ID ="Phone_Label" runat ="server" Text="Phone" CssClass ="smalllabel"></asp:Label>
    <br />
    <asp:TextBox ID ="Phone_TextBox" runat ="server" TextMode="Phone" placeholder ="" CssClass ="inputbox"></asp:TextBox>
    <asp:RequiredFieldValidator ID ="Phone_Req_Validator" runat ="server"
        ControlToValidate ="Phone_TextBox" ErrorMessage ="Phone Number is Mandatory" Display ="None"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Button ID ="Submit_Button" runat ="server" Text ="Submit" CssClass ="submitbutton" OnClick="Submit_Button_Click" />
    <br /><br />
    <asp:Label ID ="Error_Label" runat ="server" Text =""></asp:Label>
    <asp:ValidationSummary ID ="User_Account_Creation_Validation_Summary" runat ="server" CssClass ="rederror" HeaderText ="Errors Occured During Registration:"/>
    </div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

