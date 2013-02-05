<%@ Page Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="AuctionOnline.User.WebForm14" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <title>User Setting Section</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log 
Out</asp:LinkButton>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
    <p>
      
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                    Checked="True" ForeColor="Red" GroupName="a" 
                    oncheckedchanged="RadioButton1_CheckedChanged" Text="Change User Name" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                    ForeColor="Red" GroupName="a" oncheckedchanged="RadioButton2_CheckedChanged" 
                    Text="Change Password" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                    ForeColor="#CC0000" GroupName="a" 
                    oncheckedchanged="RadioButton3_CheckedChanged" Text="Secret Question" />
            </td>
        </tr>
    </table>
    
    <p>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <br />
                <table class="style1">
                    <tr>
                        <td width="200">
                            &nbsp;Your Name</td>
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
                            New Name</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
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
                            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" 
                                Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="style1">
                    <tr>
                        <td width="200">
                            Current Password</td>
                        <td width="200">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" 
                                TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            New Password</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" 
                                TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Re-Type Password</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" 
                                TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                                ErrorMessage="CompareValidator">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Save" 
                                Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table class="style1">
                    <tr>
                        <td width="200">
                            New Question</td>
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
                            Answer</td>
                        <td width="200">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Save" 
                                Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <br />
        </asp:MultiView>
        <br />
    </p>
   
   
   </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
