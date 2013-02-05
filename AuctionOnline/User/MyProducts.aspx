<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="MyProducts.aspx.cs" Inherits="AuctionOnline.User.WebForm10" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title>My Prodcut Section</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
      <table class="style1">
        <tr><td width="200"><asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
            <td align="center">
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
                    Width="200px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="Not Avail">Sold Item</asp:ListItem>
                    <asp:ListItem Value="Stock">Biding Continue</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
  
    <asp:PlaceHolder ID="ph" runat="server"></asp:PlaceHolder>
    
    <br />
  
  
  </ContentTemplate>
  
    </asp:UpdatePanel>
</asp:Content>
