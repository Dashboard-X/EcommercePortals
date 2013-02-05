<%@ Page Language="C#" MasterPageFile="~/visitor.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AuctionOnline.WebForm1" Title="Untitled Page" %>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager> 
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
                 
                 <table class="style1">
                     <tr>
                         <td align="center" width="240">
                             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                 CssClass="textbox" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                 Width="200px">
                                 <asp:ListItem>Company</asp:ListItem>
                                 <asp:ListItem Value="P_name">Product</asp:ListItem>
                                 <asp:ListItem Value="p_id">ProductID</asp:ListItem>
                             </asp:DropDownList>
                         </td>
                         <td align="center" width="220">
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                         </td>
                         <td width="200">
                             <asp:Button ID="Search" runat="server" onclick="Search_Click" Text="Search" />
                         </td>
                     </tr>
                 </table>
                 <br />
                 <br />
                 <asp:PlaceHolder ID="ph" runat="server"></asp:PlaceHolder>
                 
             </ContentTemplate>
           
        
        
        </asp:UpdatePanel>
    
</asp:Content>
