<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maruti.aspx.cs" Inherits="maruti" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <table style="width: 391px; height: 370px; text-align: left;">
            <tr>
                <td align="left" valign="top" style="width: 153px">
                <img src=
         
           "images/maruti-800-uniq.jpg" style="width: 303px; height: 203px" /> &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="MARUTI 800"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater </li>
                        <li>Petrol Engine</li>
                        <li>Economical (16km/l)</li>
                    </ul>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="14pt"
                        OnTextChanged="TextBox1_TextChanged" Width="64px">Rs 800</asp:TextBox>
                    &nbsp;&nbsp;</td>
                <td style="width: 135px" align="top" valign="top">
                <img src=
                    "images/Maruti-Swift-VXi(ABS).jpg" style="width: 303px; height: 203px" />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="SWIFT"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Petrol/Diesel Engine</li>
                        <li>Economical (14km/l)</li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="14pt" Width="74px">Rs 1100</asp:TextBox>
                        </p>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;</p>
                </td>
            </tr>
            <tr>
                <td style="width: 153px; height: 426px;" valign="top">
                <img src="images/Suzuki-WagonR-1.jpg" style="width: 303px; height: 203px" />
               
                    &nbsp; &nbsp;
                
              
                    &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="WagonR" style="background-image: url(images/Suzuki-WagonR-1.jpg); background-repeat: no-repeat"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Petrol/LPG Engine</li>
                        <li>Economical (17km/l)</li>
                    </ul>
                    <p>
                        &nbsp;<asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="14pt" Width="63px">Rs 900</asp:TextBox>&nbsp;</p>
                </td>
                <td style="width: 135px; height: 426px;" valign="top">
                <img src="images/maruti-alto.jpg" style="width: 303px; height: 203px" />&nbsp;<br />
                    &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="ALTO"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Petrol Engine</li>
                        <li>Economical (18km/l)</li>
                    </ul>
                    <p>
                        &nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="14pt" Width="61px">Rs 850</asp:TextBox>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;</p>
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="37px" ImageUrl="~/images/Aiga_leftarrow_inv.gif" Width="55px" />&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Height="37px" ImageUrl="~/images/Aiga_rightarrow_inv.gif" Width="55px" />
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="12pt"
            OnClick="LinkButton5_Click" Style="color: black">PROCEED TO BOOK</asp:LinkButton>
    </form>
</body>
</html>
