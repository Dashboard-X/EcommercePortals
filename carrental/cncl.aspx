<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cncl.aspx.cs" Inherits="cncl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #ccccff">
        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="24pt" Font-Underline="True"
            Style="font-family: 'Times New Roman'" Width="259px" ReadOnly="True">CANCELLATION</asp:TextBox><br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="188px" Font-Bold="True" Font-Size="10pt" ReadOnly="True">ENTER YOUR CUSTOMER NO.</asp:TextBox>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Font-Bold="False" Font-Size="10pt"></asp:TextBox><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Text="I abide by all the Terms and Conditions"
            Width="285px" /><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
            Style="color: white; background-color: black" Text="CANCEL" />
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="11pt" Text="BOOKING CANCELLED SUCCESSFULLY... "
            Visible="False" Width="311px"></asp:Label><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" style="color: green" Font-Bold="True" Font-Size="11pt" OnClick="LinkButton1_Click">Home</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" style="color: green" Font-Bold="True" Font-Size="11pt" OnClick="LinkButton2_Click">About Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" style="color: green" Font-Bold="True" Font-Size="11pt" OnClick="LinkButton3_Click">Developers</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" style="color: green" Font-Bold="True" Font-Size="11pt" OnClick="LinkButton4_Click">Contact Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="11pt" style="color: green" OnClick="LinkButton5_Click">Help</asp:LinkButton><br />
        &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
