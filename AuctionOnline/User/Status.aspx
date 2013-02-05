<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="AuctionOnline.User.WebForm1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>Home Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log 
    out</asp:LinkButton>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>           
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
    Width="200px">
        <asp:ListItem>Company</asp:ListItem>
        <asp:ListItem Value="P_name">Product</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
<asp:Button ID="Button1"
        runat="server" Text="Search" onclick="Button1_Click" />
   
    
    <br />
   
    
    <p>
                <asp:PlaceHolder ID="ph" runat="server">
                  
                </asp:PlaceHolder>
      </p>
    
    
    </ContentTemplate>
    
    
    </asp:UpdatePanel>           
    



</asp:Content>
