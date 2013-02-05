<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search1.aspx.cs" Inherits="search1" %>

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
    <div style="font-family: Georgia; background-color: #ffffff;">
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/images.jpeg" TabIndex="25"
             />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="32pt" Font-Underline="True"
            Style="font-family: Georgia; background-color: transparent;" Width="379px" EnableViewState="False" TabIndex="26" ReadOnly="True">BOOKING FORM</asp:TextBox>
        &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <br />
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" Height="63px"
            Width="755px" TabIndex="27" />
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/user1.xml"></asp:XmlDataSource>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="11pt" Text="YOUR CUSTOMER NO IS: "
            Visible="False" TabIndex="28"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="24pt" Text="Label"
            Visible="False" TabIndex="29"></asp:Label>&nbsp;<asp:Button ID="Button1" runat="server"
                Font-Bold="True" Font-Size="16pt" OnClick="Button1_Click" Style="color: red;
                background-color: black" Text="GO...!!" Visible="False" TabIndex="34" /><br />
        &nbsp; &nbsp;
        <table id="TABLE1" onclick="return TABLE1_onclick()" style="background-image: none">
            <tr>
                <td style="width: 314px; height: 21px">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Size="10pt" Style="color: black;
                        background-color: white" Width="136px" TabIndex="14" ReadOnly="True">NAME OF CUSTOMER </asp:TextBox></td>
                <td style="width: 79px; height: 21px">
                    <asp:TextBox ID="TextBox9" runat="server" MaxLength="15"></asp:TextBox></td>
                <td style="width: 55px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9"
                        ErrorMessage="INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        Style="color: red; background-color: transparent" Width="169px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 314px; height: 21px">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Bold="True" Font-Size="10pt" Width="72px" ReadOnly="True" TabIndex="15">PHONE NO.</asp:TextBox></td>
                <td style="width: 79px; height: 21px">
                    <asp:TextBox ID="TextBox10" runat="server" TabIndex="1" MaxLength="11"></asp:TextBox></td>
                <td style="width: 314px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10"
                        ErrorMessage="INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        Style="color: red; background-color: transparent"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox10"
                        ErrorMessage="ENTER THE CORRECT NO." Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        ValidationExpression="\d{11}" Width="215px"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 314px; height: 21px">
                    <asp:TextBox ID="TextBox7" runat="server" Font-Bold="True" Font-Size="10pt" Width="56px" ReadOnly="True" TabIndex="16">Email-Id</asp:TextBox></td>
                <td style="width: 79px; height: 21px">
                    <asp:TextBox ID="TextBox11" runat="server" TabIndex="2"></asp:TextBox></td>
                <td style="width: 55px; height: 21px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox11"
                        ErrorMessage=" INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt" Width="176px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox11"
                        ErrorMessage=" " Font-Bold="True" Font-Italic="True" Font-Size="8pt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="129px">INVALID Email-Id</asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 314px; height: 21px">
                    <asp:TextBox ID="TextBox8" runat="server" Font-Bold="True" Font-Size="10pt" Width="62px" TabIndex="17" ReadOnly="True">ADDRESS</asp:TextBox></td>
                <td style="width: 79px; height: 21px">
                    <asp:TextBox ID="TextBox19" runat="server" TabIndex="3"></asp:TextBox></td>
                <td style="width: 55px; height: 21px">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
            BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
            Font-Size="8pt" ForeColor="#003399" Height="54px" Visible="False" Width="20px" OnSelectionChanged="Calendar1_SelectionChanged" TabIndex="31">
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        </asp:Calendar>
                    &nbsp; &nbsp;&nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 21px">
                    <asp:TextBox ID="TextBox12" runat="server" Font-Bold="True" Font-Size="10pt" Width="91px" TabIndex="18" ReadOnly="True">PICK UP DATE</asp:TextBox></td>
                <td style="width: 79px; height: 21px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="149px" TabIndex="4"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/cal.gif" ImageAlign="Top" TabIndex="39" />
                    </td>
                <td style="width: 55px; height: 21px">
                    &nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2"
                        Font-Bold="True" Font-Italic="True" Font-Size="8pt" OnServerValidate="CustomValidator1_ServerValidate1"
                        Width="125px"></asp:CustomValidator><br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        ForeColor="Red" Text="PLZ ENTER THE CORRECT DATE" Visible="False" Width="203px"></asp:Label><br />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                        Font-Size="8pt" ForeColor="#003399" Height="50px" OnSelectionChanged="Calendar2_SelectionChanged"
                        Visible="False" Width="15px" TabIndex="32">
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                            Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    </asp:Calendar>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 22px">
                    <asp:TextBox ID="TextBox13" runat="server" Font-Bold="True" Font-Size="10pt" Width="106px" TabIndex="19" ReadOnly="True">DROP OFF DATE</asp:TextBox></td>
                <td style="width: 79px; height: 22px">
                    <asp:TextBox ID="TextBox3" runat="server" TabIndex="5"></asp:TextBox><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cal.gif" OnClick="ImageButton2_Click" TabIndex="40" />
                    </td>
                <td style="width: 55px; height: 22px">
                    </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 12px">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Width="86px" TabIndex="20" ReadOnly="True">NO. OF DAYS</asp:TextBox></td>
                <td style="width: 79px; height: 12px">
                    <asp:TextBox ID="TextBox22" runat="server" TabIndex="6"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="9pt" Text="(dd:hh:mm:ss)"
                        Width="86px" TabIndex="43"></asp:Label></td>
                <td style="width: 55px; height: 12px">
                </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 42px">
                    <asp:TextBox ID="TextBox14" runat="server" Font-Bold="True" Font-Size="10pt" Width="83px" TabIndex="21" ReadOnly="True">PICK-IN CITY</asp:TextBox></td>
                <td align="left" style="width: 79px; height: 42px">
                    <asp:DropDownList ID="DropDownList11" runat="server" AutoPostBack="True" TabIndex="7" DataSourceID="SqlDataSource2" DataTextField="CNAME" DataValueField="CNAME">
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Bangluru</asp:ListItem>
                        <asp:ListItem>Jaipur</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Kanpur</asp:ListItem>
                        <asp:ListItem>Indore</asp:ListItem>
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString21 %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString21.ProviderName %>" SelectCommand='SELECT "CNAME" FROM "CITY"'>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 55px; height: 42px">
                </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 24px;">
                    <asp:TextBox ID="TextBox15" runat="server" Font-Bold="True" Font-Size="10pt" Width="102px" TabIndex="22" ReadOnly="True">DROP OFF CITY</asp:TextBox></td>
                <td style="width: 79px; height: 24px;">
                    <asp:DropDownList ID="DropDownList12" runat="server" AutoPostBack="True" TabIndex="8" DataSourceID="SqlDataSource2" DataTextField="CNAME" DataValueField="CNAME">
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Bangaluru</asp:ListItem>
                        <asp:ListItem>Kanpur</asp:ListItem>
                        <asp:ListItem>Indore</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Jaipur</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 55px; height: 24px">
                </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 40px">
                    <asp:CheckBox ID="CheckBox2" runat="server" Font-Bold="True" ForeColor="#FFFFFF"
                        Style="color: white"
                        Width="1px" Height="1px" OnCheckedChanged="CheckBox2_CheckedChanged" TabIndex="9" /><asp:TextBox ID="TextBox16" runat="server" Font-Bold="True" Font-Size="10pt" Width="110px" TabIndex="41" ReadOnly="True">AC(Extra Rs 500/-)</asp:TextBox></td>
                <td style="width: 314px; height: 40px">
                    <asp:CheckBox ID="CheckBox3" runat="server" Font-Bold="True" Style="color: white" Width="1px" Height="1px" TabIndex="10" /><asp:TextBox ID="TextBox17" runat="server" Font-Bold="True" Font-Size="10pt" Width="139px" TabIndex="42" ReadOnly="True">DRIVER(Extra Rs 500/-)</asp:TextBox></td>
                <td style="width: 55px; height: 40px">
                </td>
            </tr>
            <tr>
                <td style="width: 314px; height: 77px">
                    <asp:TextBox ID="TextBox18" runat="server" Font-Bold="True" Font-Size="10pt" Width="78px" TabIndex="23" ReadOnly="True">CAR MODEL</asp:TextBox></td>
                <td style="width: 79px; height: 77px">
                    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" TabIndex="11" DataSourceID="SqlDataSource1" DataTextField="MODEL" DataValueField="MODEL" >
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString19 %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString19.ProviderName %>" SelectCommand='SELECT "MODEL" FROM "RENT"'>
                    </asp:SqlDataSource>
                </td>
                <td style="width: 55px; height: 77px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="9pt"
                        Style="color: red; background-color: transparent" Text="Car Not Available" Visible="False" Width="119px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 314px; height: 40px" align="top">
                    <asp:TextBox ID="TextBox20" runat="server" Font-Bold="True" Font-Size="10pt" Width="38px" TabIndex="24" ReadOnly="True">RENT</asp:TextBox></td>
                <td style="width: 79px; height: 40px">
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:TextBox ID="TextBox21" runat="server" TabIndex="12"></asp:TextBox>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
                <td style="width: 55px; height: 40px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 314px; height: 53px">
                </td>
                <td style="width: 79px; height: 53px" align="left">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" OnClick="LinkButton1_Click"
                        Style="color: white; font-family: 'Times New Roman'; background-color: black; border-collapse: separate;" Font-Size="16pt" Font-Underline="False" Height="26px" Width="65px" BorderStyle="Outset" TabIndex="13">BOOK</asp:LinkButton></td>
                <td style="width: 55px; height: 53px">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                </td>
            </tr>
        </table>
    
    </div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="9pt"
            OnClick="LinkButton2_Click1" Style="color: green" Width="32px" TabIndex="33">Home</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="9pt"
            OnClick="LinkButton3_Click" Style="color: green" TabIndex="34">About Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="9pt"
            OnClick="LinkButton4_Click" Style="color: green" TabIndex="35">Developers</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="9pt"
            OnClick="LinkButton5_Click" Style="color: green" TabIndex="36">Contact Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="9pt"
            OnClick="LinkButton6_Click" Style="color: green" TabIndex="37">Help</asp:LinkButton><br />
        <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource2" TabIndex="38" />
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/home3.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
