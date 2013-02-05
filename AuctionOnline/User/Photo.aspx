<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="AuctionOnline.User.WebForm2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Product Preview Section</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Logout</asp:LinkButton>
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div>
    <table class="style1">
        <tr>
            <td height="200" rowspan="7" width="200">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" 
                    AlternateText="Not Avail" />
            </td>
            <td align="center" colspan="2">
                Product ID</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Not Avail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Prodcut Name</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Not Avail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Product Type</td>
                             <td width="200">
                                 <asp:Label ID="Label4" runat="server" Text="Not Avail"></asp:Label>
            </td>
                         </tr>
                         <tr>
                             <td align="center" colspan="2">
                                 Highest&nbsp; Bidder</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Not Avail"></asp:Label>
                             </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Highest Bid</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Not Avail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                Owner ID</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Not Avail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" valign="middle">
                Your Bid</td>
            <td align="center" valign="middle">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                    Width="150px" />
            </td>
        </tr>
    </table>
    </div>
    <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="696px" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    
    </div>
    
    
    
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
