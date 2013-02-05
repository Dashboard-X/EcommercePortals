<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Notsignedin.aspx.cs" Inherits="CopmuterOnLine.Notsignedin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>You are not signed in</h1>
You have to sign in with your username and password to be able to shop in our webshop. If you don´t have an
account <asp:HyperLink ID="hplRegisterCustomer" runat="server" NavigateUrl="~/Registercustomer.aspx">you can create one here</asp:HyperLink>. 
We have one customer with the username of "info@customer.com" and a password of "customer" and a second customer
with the username of "go@customer.com" and a password of "customer".
</asp:Content>
