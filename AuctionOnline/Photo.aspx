<%@ Page Language="C#" MasterPageFile="~/visitor.Master" AutoEventWireup="true" CodeBehind="Photo.aspx.cs" Inherits="AuctionOnline.WebForm5" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="style1">
            <tr>
                <td rowspan="7" valign="top" width="200">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" />
                </td>
                <td align="center" colspan="2">
                    Product ID</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    Product Name</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    Product Type</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                                 Highest&nbsp; Bidder</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    Highest Bid</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                Owner ID</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Not Avail"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    Your Bid</td>
                <td align="center" class="textbox">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                        Width="150px" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
        <br />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="698px">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </p>
</asp:Content>
