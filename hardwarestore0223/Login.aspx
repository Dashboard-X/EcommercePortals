<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CopmuterOnLine.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table id = "tbl" runat = "server" border ="2">
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label></td>
        <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td></tr>
        <tr><td>
        <asp:Label ID="Pwd" runat="server" Text="Password :"></asp:Label></td>
       <td><asp:TextBox ID="txtPwd" runat="server"></asp:TextBox><br /></td></tr>
       <tr><td>
        &nbsp;</td><td><asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td></tr>
    </table>
</asp:Content>
