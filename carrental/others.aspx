<%@ Page Language="C#" AutoEventWireup="true" CodeFile="others.aspx.cs" Inherits="others" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 420px">
            <tr>
                <td style="width: 431px; height: 285px" valign="top">
                <img src="images/gypsy.jpg" style="width: 327px; height: 249px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Text="GYPSY"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Diesel/Petrol Engine</li>
                        <li>Economical (20km/l )</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="16pt" Width="81px">Rs 1000</asp:TextBox>
                        </p>
                </td>
                <td style="width: 1917251px; height: 285px" valign="top">
                <img src=
                
                    "images/classic_open_jeep__1_.jpg" style="height: 251px" /> <br />
                    <asp:Label ID="Label2" runat="server" Text="OPEN JEEP" Font-Bold="True" Font-Size="16pt"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Diesel/Petrol Engine</li>
                        <li>Economical (18km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="16pt" Width="83px">Rs 1050</asp:TextBox>
                        </p>
                </td>
            </tr>
            <tr>
                <td style="width: 431px; height: 217px" valign="top">
                <img src="images/jeep.jpg" style="width: 327px; height: 249px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" Text="JEEP"></asp:Label><br />
                    <br />
                    <ul>
                        <li>6 Seater</li>
                        <li>Diesel/Petrol Engine</li>
                        <li>Economical (20km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Bold="True"
                            Font-Size="16pt" Width="68px">Rs 900</asp:TextBox>
                        </p>
                </td>
                <td style="width: 1917251px; height: 217px" valign="top">
                <img src="images/bus.jpg" style="width: 327px; height: 249px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="16pt" Text="BUS"></asp:Label><br />
                    <br />
                    <ul>
                        <li>10 Seater</li>
                        <li>Diesel/petrol Engine</li>
                        <li>Economical (8km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="16pt" Width="80px">Rs 1500</asp:TextBox>
                        </p>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp;</p>
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/images/Aiga_leftarrow_inv.gif"
            OnClick="ImageButton1_Click" Width="55px" />&nbsp;<asp:ImageButton ID="ImageButton2"
                runat="server" Height="37px" ImageUrl="~/images/Aiga_rightarrow_inv.gif" OnClick="ImageButton2_Click"
                Width="55px" />
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="12pt"
            Style="color: black" OnClick="LinkButton5_Click">PROCEED TO BOOK</asp:LinkButton>
    </form>
</body>
</html>
