<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tata.aspx.cs" Inherits="tata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function IMG1_onclick() {

}

function IMG2_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
    </div>
        <table>
            <tr>
                <td style="width: 264px; height: 294px" valign="top">
                <img src="images/mahindra-scorpio-suv-small.jpg" style="width: 341px; height: 208px" />
                <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Text="SCORPIO"></asp:Label>
                    <br />
                    <br />
                    <ul>
                        <li>10 Seater</li>
                        <li>Diesel Engine</li>
                        <li>Economical (10km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" Text="Rs 1250"></asp:Label>
                        </p>
                    <p>
                        &nbsp;</p>
                </td>
                <td style="width: 254px; height: 294px" valign="top">
                <img src=
                    "images/safari.jpg" id="IMG2" onclick="return IMG2_onclick()" style="height: 225px" />&nbsp;<br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="SAFARI"></asp:Label><br />
                    <br />
                    <ul>
                        <li>6 Seater</li>
                        <li>Diesel Engine</li>
                        <li>Economical (12km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="Rs 1200"></asp:Label>
                        &nbsp;</p>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 264px; height: 294px" valign="top">
                <img src="images/Tata_Nano.jpg" style="width: 332px; height: 207px" />&nbsp;
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="14pt" Text="NANO"></asp:Label><br />
                    <br />
                    <br />
                    <ul>
                        <li>2 Seater</li>
                        <li>Diesel Engine</li>
                        <li>Economical (20km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt" Width="61px">Rs 750</asp:TextBox>
                        </p>
                    <p>
                        &nbsp;</p>
                </td>
                <td style="width: 254px; height: 294px" valign="top">
                <img src="images/docomo.jpg" style="width: 400px; height: 207px" /><br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="14pt" Text="DOCOMO"></asp:Label><br />
                    <br />
                    <ul>
                        <li>6 Seater</li>
                        <li>Diesel Engine</li>
                        <li>Economical (17km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;<asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="14pt" Width="73px">Rs 1050</asp:TextBox>
                        </p>
                    <p>
                        &nbsp;</p>
                </td>
            </tr>
        </table>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1"
            runat="server" Height="37px" ImageUrl="~/images/Aiga_leftarrow_inv.gif" OnClick="ImageButton1_Click"
            Width="55px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="37px" ImageUrl="~/images/Aiga_rightarrow_inv.gif"
            OnClick="ImageButton2_Click" Width="55px" />
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="12pt"
            OnClick="LinkButton4_Click" Style="color: black"> PROCEED TO BOOK</asp:LinkButton>
    </form>
</body>
</html>
