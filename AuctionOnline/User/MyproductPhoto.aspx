<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="MyproductPhoto.aspx.cs" Inherits="AuctionOnline.User.WebForm11" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title>My Product Section</title>
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
     <p>
        <br />
        <table class="style1">
            <tr>
                <td height="150" rowspan="6" valign="top" width="150">
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" />
                </td>
                <td width="250" align="center">
                    Sold to Highest Bidder</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Sold" 
                        Width="122px" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    Product ID</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    Product Name</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                                 Highest&nbsp; Bidder</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                Highest Bid</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="701px">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </p>
    
    
    
    
    
    </ContentTemplate>
    
    
    </asp:UpdatePanel>
    
    
    
</asp:Content>
