<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="AuctionOnline.User.WebForm3" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Product</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <link rel="Stylesheet" href="css/main.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log 
    out</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
  
  
  
   <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
               <div>
               <p></p><p></p><p></p><p></p>
               
                   <table class="style1">
                       <tr>
                           <td width="200">
                               Product</td>
                           <td width="230">
                               <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               Product type</td>
                           <td>
                               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
                                   Width="200px">
                               </asp:DropDownList>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               Company</td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               Model</td>
                           <td>
                               <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               Warranty</td>
                           <td>
                               <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               Product image</td>
                           <td>
                               <asp:FileUpload ID="FileUpload1" runat="server" />
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               Date</td>
                           <td>
                               <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                               <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                   PopupButtonID="TextBox5" TargetControlID="TextBox5"></asp:CalendarExtender>  
                                 
                           </td>
                           <td>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                   ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                           </td>
                       </tr>
                       <tr>
                           <td>
                           </td>
                           <td align="center">
                               <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                           </td>
                           <td>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td>
                               <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                           </td>
                           <td>
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                   </table>
               
               
               </div>
            </asp:View>
        <br />
    </asp:MultiView>
   
   
</asp:Content>
