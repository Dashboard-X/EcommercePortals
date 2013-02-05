<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tour.aspx.cs" Inherits="tour" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: aliceblue">
        <asp:ImageButton ID="ImageButton21" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td align="left" style="width: 43px; height: 52px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="12pt"
                        OnClick="LinkButton1_Click" Style="color: black">MARUTI</asp:LinkButton></td>
                <td style="width: 43px; height: 52px" align="left">
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="82px" ImageUrl="~/images/maruti-800-uniq.jpg" OnClick="ImageButton1_Click" Width="100px" /><br />
                    <span style="font-size: 14pt"><strong>800</strong>/-</span></td>
                <td style="width: 58px; height: 52px">
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="82px" ImageUrl="~/images/Maruti-Swift-VXi(ABS).jpg" OnClick="ImageButton2_Click" Width="100px" /><br />
                    <span style="font-size: 14pt"><strong>1100</strong>/-</span>
                    &nbsp;&nbsp;
                    <br />
                    &nbsp;
                </td>
                <td style="width: 50px; height: 52px">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="81px" ImageUrl="~/images/Suzuki-WagonR-1.jpg" OnClick="ImageButton3_Click" Width="100px" /><br />
                    <span style="font-size: 14pt"><strong>900</strong>/-</span></td>
                <td style="width: 50px; height: 52px; font-size: 12pt;">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="94px" ImageUrl="~/images/maruti-alto.jpg" OnClick="ImageButton4_Click" Width="100px" /><br />
                    <span style="font-size: 14pt"><strong>850</strong>/-</span></td>
                <td style="font-size: 12pt; width: 50px; height: 52px">
                </td>
                <td style="font-size: 12pt; width: 156px; height: 52px" align="left">
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="width: 43px; height: 50px">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="12pt"
                        OnClick="LinkButton2_Click" Style="color: black">TATA</asp:LinkButton></td>
                <td style="width: 43px; height: 50px">
                    <br />
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="100px" ImageUrl="~/images/docomo.jpg" OnClick="ImageButton5_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1050/-</span></strong></td>
                <td style="width: 58px; height: 50px">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="100px" ImageUrl="~/images/safari.jpg" OnClick="ImageButton6_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1200/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="100px" ImageUrl="~/images/mahindra-scorpio-suv-small.jpg" OnClick="ImageButton7_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1250/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="100px" ImageUrl="~/images/Tata_Nano.jpg" OnClick="ImageButton8_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">750/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                </td>
                <td style="width: 156px; height: 50px">
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="width: 43px; height: 50px">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="12pt"
                        OnClick="LinkButton3_Click" Style="color: black">FIAT</asp:LinkButton></td>
                <td style="width: 43px; height: 50px">
                    <br />
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="100px" ImageUrl="~/images/petra.jpg" OnClick="ImageButton9_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1300/-</span></strong></td>
                <td style="width: 58px; height: 50px">
                    <asp:ImageButton ID="ImageButton10" runat="server" Height="100px" ImageUrl="~/images/Fiat_Palio.jpg" OnClick="ImageButton10_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1000/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="100px" ImageUrl="~/images/ambassador-car.jpg" OnClick="ImageButton11_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">850/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton12" runat="server" Height="100px" ImageUrl="~/images/premier_padmini.jpg" OnClick="ImageButton12_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">800/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                </td>
                <td style="width: 156px; height: 50px">
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="width: 43px; height: 50px">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="12pt"
                        OnClick="LinkButton4_Click" Style="color: black">TOYOTA</asp:LinkButton></td>
                <td style="width: 43px; height: 50px">
                    <br />
                    <asp:ImageButton ID="ImageButton13" runat="server" Height="100px" ImageUrl="~/images/toyota-qualis.jpg" OnClick="ImageButton13_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1300/-</span></strong></td>
                <td style="width: 58px; height: 50px">
                    <asp:ImageButton ID="ImageButton14" runat="server" Height="100px" ImageUrl="~/images/Toyota_Innova.jpg" OnClick="ImageButton14_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1250/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton15" runat="server" Height="100px" ImageUrl="~/images/toyota-camry-new-02.jpg" OnClick="ImageButton15_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1200/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton16" runat="server" Height="100px" ImageUrl="~/images/2010-land-cruiser.jpg" OnClick="ImageButton16_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1400/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                </td>
                <td style="width: 156px; height: 50px">
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td style="width: 43px; height: 50px">
                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="12pt"
                        OnClick="LinkButton5_Click" Style="color: black">OTHERS</asp:LinkButton></td>
                <td style="width: 43px; height: 50px">
                    <br />
                    <asp:ImageButton ID="ImageButton17" runat="server" Height="100px" ImageUrl="~/images/gypsy.jpg" OnClick="ImageButton17_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1000/-</span></strong></td>
                <td style="width: 58px; height: 50px">
                    <asp:ImageButton ID="ImageButton18" runat="server" Height="100px" ImageUrl="~/images/classic_open_jeep__1_.jpg" OnClick="ImageButton18_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1050/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton19" runat="server" Height="100px" ImageUrl="~/images/jeep.jpg" OnClick="ImageButton19_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">900/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                    <asp:ImageButton ID="ImageButton20" runat="server" Height="100px" ImageUrl="~/images/bus.jpg" OnClick="ImageButton20_Click" Width="100px" /><br />
                    <strong><span style="font-size: 14pt">1500/-</span></strong></td>
                <td style="width: 50px; height: 50px">
                </td>
                <td style="width: 156px; height: 50px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
