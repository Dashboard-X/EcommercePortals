<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Other.aspx.cs" Inherits="AuctionOnline.User.WebForm9" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>Other Product Section</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="ph" runat="server"></asp:PlaceHolder>
</asp:Content>
