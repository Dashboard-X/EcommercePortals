<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true"
    CodeBehind="Forgotpassword.aspx.cs" Inherits="CopmuterOnLine.Forgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="NewPasswordPanel" runat="server" Visible="true">
    <h1>
        Create new password</h1>
    If a user has forgot his password he can enter his e-mail adress in the textbox
    below and click the button. When the button is clicked there is code to generate
    a random password and then send this password by e-mail to the entered e-mail adress.<br />
    <br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:Button ID="btnNewPassword" runat="server" Text="Get new password" OnClick="btnNewPassword_Click" /><br />
    <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label><br />
    <br />
    </asp:Panel>
    <asp:Panel ID="ConfirmationPanel" runat="server" Visible="false">
        <h1>
            Confirmation</h1>
        We confirm that we have created and e-mailed a new password to your e-mail adress.
    </asp:Panel>
</asp:Content>
