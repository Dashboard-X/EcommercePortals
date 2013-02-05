<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="AuctionOnline.User.WebForm12" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title>Sign Up Section</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table class="style1">
        <tr>
            <td width="200">
                Name</td>
            <td width="200">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Re-Type Password</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="200px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="CompareValidator">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date Of Birth</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                    PopupButtonID="TextBox5" TargetControlID="TextBox5">
                </asp:CalendarExtender>  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Country</td>
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
                Mobile</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Secrete Question</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Answer</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Create" 
                    Width="150px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
