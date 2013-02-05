<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fiat.aspx.cs" Inherits="fiat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" /><br />
        <br />
        <table style="width: 709px; height: 373px">
            <tr>
                <td style="height: 277px; width: 377px;" valign="top">
                    &nbsp;<img src="images/petra.jpg" style="width: 350px" id="IMG1" onclick="return IMG1_onclick()" /><br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" Text="PETRA"></asp:Label><br />
                    <br />
                    <ul>
                        <li>5 Seater</li>
                        <li>Diesel/Petrol Engine</li>
                        <li>Economical (12km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="16pt" Width="81px">Rs 1300</asp:TextBox>
                        </p>
                </td>
                <td style="width: 342px; height: 277px" valign="top">
                <img src="images/Fiat_Palio.jpg" style="width: 327px; height: 249px" />
                    <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" Text="PALIO"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Disel/Petrol Engine</li>
                        <li>Economical (14km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" Font-Size="16pt" OnTextChanged="TextBox2_TextChanged"
                            Width="82px">Rs 1000</asp:TextBox>&nbsp;
                        </p>
                </td>
            </tr>
            <tr>
                <td style="height: 282px; width: 377px;" valign="top">
                <img src="images/ambassador-car.jpg" style="width: 327px; height: 249px" />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16pt" Text="AMBASSADOR"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Diesel/Petrol Engine</li>
                        <li>Economical (15km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="16pt" Height="22px"
                            Width="67px">Rs 850</asp:TextBox>
                        </p>
                </td>
                <td style="width: 342px; height: 282px" valign="top">
                <img src="images/premier_padmini.jpg" style="width: 327px; height: 249px" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="16pt" Text="PADMINI PREMIER"></asp:Label><br />
                    <br />
                    <ul>
                        <li>4 Seater</li>
                        <li>Diesel/Petrol Engine</li>
                        <li>Economical (13km/l) </li>
                    </ul>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="16pt" Width="68px">Rs 800</asp:TextBox>
                        </p>
                    <p>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp;
                    </p>
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:ImageButton
            ID="ImageButton1" runat="server" Height="37px" ImageUrl="~/images/Aiga_leftarrow_inv.gif"
            OnClick="ImageButton1_Click" Width="55px" />&nbsp;<asp:ImageButton ID="ImageButton2"
                runat="server" Height="37px" ImageUrl="~/images/Aiga_rightarrow_inv.gif" OnClick="ImageButton2_Click"
                Width="55px" />
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="12pt"
            OnClick="LinkButton5_Click" Style="color: black"> PROCEED TO BOOK</asp:LinkButton>
    </form>
</body>
</html>
