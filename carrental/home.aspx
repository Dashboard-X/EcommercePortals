<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #ffffcc">
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" style="color: green" Font-Bold="True" Font-Size="10pt">Home</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" style="color: green" Font-Bold="True" Font-Size="10pt">About Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" style="color: green" Font-Bold="True" Font-Size="10pt">Developers</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" style="color: green" Font-Bold="True" Font-Size="10pt">Contact Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" style="color: green" Font-Bold="True" Font-Size="10pt">Help</asp:LinkButton><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
            Font-Size="32pt" Height="52px" Style="background-color: transparent" Width="283px">CAR RENTAL</asp:TextBox><br />
        <table>
            <tr>
                <td style="width: 755px; height: 33px; background-color: transparent;">
                    <asp:AdRotator ID="AdRotator4" runat="server" DataSourceID="XmlDataSource4" Height="33px"
                        Width="755px" OnAdCreated="AdRotator4_AdCreated" />
                    <asp:XmlDataSource ID="XmlDataSource4" runat="server" DataFile="~/home3.xml"></asp:XmlDataSource>
                </td>
            </tr>
        </table>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="Red"
            NavigateUrl="~/MODELS.aspx">**SERVICES**</asp:HyperLink>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <table>
            <tr>
                <td align="left" style="width: 211px; height: 173px">
                    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource2" Height="330px" Width="200px" />
                    <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/homexml.xml"></asp:XmlDataSource>
                    &nbsp;&nbsp;
                </td>
                <td style="width: 25px; height: 173px">
                    &nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="30px" ImageUrl="~/images/administrator-icon.png" OnClick="ImageButton2_Click" Width="30px" /><br />
                    &nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/user-icon.jpg" Height="30px" OnClick="ImageButton1_Click" Width="30px" /></td>
                <td style="width: 325px; height: 173px">
                    <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Width="87px" Font-Bold="True" Font-Size="16pt" style="color: black">Administrator</asp:LinkButton><br />
                    <br />
        <asp:LinkButton ID="LinkButton1" runat="server" Height="14px" OnClick="LinkButton1_Click" Font-Bold="True" Font-Size="16pt" style="color: black">User</asp:LinkButton></td>
                <td style="width: 241px; height: 173px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource1" Height="330px"
                        Width="220px" />
                    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/HOME1.xml"></asp:XmlDataSource>
                </td>
            </tr>
        </table>
        &nbsp;<table style="width: 710px; height: 70px">
            <tr>
                <td style="width: 255px; height: 85px">
                    <asp:AdRotator ID="AdRotator3" runat="server" DataSourceID="XmlDataSource3" Height="80px"
                        Width="733px" />
                    <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/HOME2.xml"></asp:XmlDataSource>
                </td>
            </tr>
        </table>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        &nbsp;
    </div>
    </form>
</body>
</html>
