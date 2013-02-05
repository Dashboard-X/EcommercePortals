<%@ Page Language="C#" AutoEventWireup="true" CodeFile="toyota1.aspx.cs" Inherits="toyota1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function IMG1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" /><br />
        <table>
            <tr>
                <td style="width: 189px; height: 203px" valign="top">
                <img src="images/toyota-qualis.jpg" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Text="QUALIS"></asp:Label><br />
                    <ul>
                        <li>8 Seater</li>
                        <li>Diesel Engine</li>
                        <li>Economical (12km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="16pt" Width="81px">Rs 1300</asp:TextBox>
                        </p>
                </td>
                <td style="width: 304px; height: 203px" valign="top">
                <img src="images/Toyota_Innova.jpg" style="width: 272px; height: 177px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" Text="INNOVA"></asp:Label><br />
                    <ul>
                        <li>10 Seater</li>
                        <li>Diesel Engine</li>
                        <li>Economical (12km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="16pt" Width="81px">Rs 1250</asp:TextBox>
                        </p>
                </td>
            </tr>
            <tr>
                <td style="width: 189px; height: 203px" valign="top">
                <img src="images/toyota-camry-new-02.jpg" style="height: 189px" id="IMG1" onclick="return IMG1_onclick()" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" Text="CAMRY"></asp:Label><br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Petrol/Diesel Engine</li>
                        <li>Economical (14km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="16pt" Width="81px">Rs 1200</asp:TextBox>
                        </p>
                </td>
                <td style="width: 304px; height: 203px" valign="top">
                <img src="images/2010-land-cruiser.jpg" style="width: 285px; height: 210px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="16pt" Text="LAND CRUZER"></asp:Label><br />
                    <ul>
                        <li>6 Seater</li>
                        <li>Petrol Engine</li>
                        <li>Economical (10km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="16pt" Width="81px">Rs 1400</asp:TextBox>
                        </p>
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/images/Aiga_leftarrow_inv.gif"
            OnClick="ImageButton1_Click" Width="55px" />&nbsp;<asp:ImageButton ID="ImageButton2"
                runat="server" Height="37px" ImageUrl="~/images/Aiga_rightarrow_inv.gif" OnClick="ImageButton2_Click"
                Width="55px" />
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="12pt"
            OnClick="LinkButton5_Click" Style="color: black">PROCEED TO BOOK</asp:LinkButton>
    </form>
</body>
</html>
