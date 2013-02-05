<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: khaki">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" /><br />
        <table>
            <tr>
                <td style="width: 633px; height: 90px">
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="90px"
                        OnAdCreated="AdRotator1_AdCreated" Width="728px" />
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/user1.xml"></asp:XmlDataSource>
                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 736px; height: 226px">
            <tr>
                <td style="width: 30px; height: 66px">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="color: black; font-family: 'Times New Roman'" Font-Bold="True" Font-Size="14pt" Height="23px" Width="86px">Site Tour</asp:LinkButton><br />
                    <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Width="196px" style="color: black; font-family: 'Times New Roman'" Font-Bold="True" Font-Size="14pt" Height="20px">Proceed For Booking</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" Font-Size="14pt"
                        Style="color: black" OnClick="LinkButton8_Click">Changes/Updation</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" Font-Size="14pt"
                        Style="color: black" Width="100px" OnClick="LinkButton9_Click">Cancellation</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="True" Font-Size="14pt"
                        OnClick="LinkButton10_Click" Style="color: #000000" Width="144px">Customer Details</asp:LinkButton></td>
                <td style="width: 17831px; height: 66px; background-color: khaki;">
                </td>
                <td style="width: 1px; height: 66px">
                    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/user2.xml"></asp:XmlDataSource>
                    &nbsp;
                    <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource2" Height="217px"
                        Width="184px" />
                </td>
            </tr>
        </table>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        <br />
        <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="9pt" OnClick="LinkButton3_Click"
                Style="color: green">Home</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="9pt"
                OnClick="LinkButton4_Click" Style="color: green">About Us</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="10pt"
                OnClick="LinkButton5_Click" Style="color: green">Developers</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="9pt"
                OnClick="LinkButton6_Click" Style="color: green">Contact Us</asp:LinkButton>
            &nbsp;<asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" Font-Size="9pt"
                OnClick="LinkButton7_Click" Style="color: green">Help</asp:LinkButton></strong><br />
        <br /><marquee direction="left" behaviour="scroll" loop=-1><pre><b>** MUMBAI ** PUNE ** NAGPUR ** DELHI ** INDORE ** KOLKATA ** BANGALURU ** AHMEDABAD ** JAIPUR ** CHENNAI **</b></pre></marquee>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp; &nbsp;<br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp;</div>
    </form>
</body>
</html>
