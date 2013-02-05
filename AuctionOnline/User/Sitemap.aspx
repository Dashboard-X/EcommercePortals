<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Sitemap.aspx.cs" Inherits="AuctionOnline.User.WebForm15" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" href="css/site.css" /> 
<title>SiteMap</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log 
    Out</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    <ul class="hmenu">
<li>Home
<ul>
<li>Search Prod</li>
</ul>


</li>
<li>My Products
<ul>
<li>UnSold Prod</li>
<li>Sold Product</li>
<li>Add Product</li>
<li>Update Prod</li>
</ul>
</li>
<li>My Bids
<ul>
<li>Success Bid</li>
<li>unSuccess Bid</li>
</ul>


</li>
<li>Sign up
<ul>
<li>Sign In</li>
</ul>
</li>
<li>Log In
<ul>
<li>Login Form</li>
</ul>
</li>

<li>Contact us</li>
<li>Setting
<ul>
<li>Question</li>
<li>passowrd</li>
<li>Change Name</li>
</ul>

</li>

</ul>
    </p>
    <p>
    </p>
</asp:Content>
