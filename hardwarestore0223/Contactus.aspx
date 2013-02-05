<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="CopmuterOnLine.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
        <h2>
            <font color="blue">Contact Us</font></h2>
        <br />
        <table border="4" bordercolor="blue">
            <!-- Name -->
            <tr>
                <td align="center">
                    Name:
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtName" runat="server" Columns="50"></asp:TextBox>
                </td>
            </tr>
            <!--From-->
            <tr>
                <td align="center">
                    From:
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtFrom" runat="server" Columns="50"></asp:TextBox>
                </td>
            </tr>
            <!--Password-->
            <!-- Subject -->
            <tr>
                <td align="center">
                    Subject:
                </td>
                <td class="style1">
                    <asp:DropDownList ID="ddlSubject" runat="server">
                        <asp:ListItem>Ask a question</asp:ListItem>
                        <asp:ListItem>Report a bug</asp:ListItem>
                        <asp:ListItem>Customer support ticket</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <!-- Message -->
            <tr>
                <td align="center">
                    Message:
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtMessage" runat="server" Columns="40" Rows="6" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <!-- Submit -->
            <tr align="center">
                <td colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            <!-- Results -->
            <tr align="center">
                <td colspan="2">
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
