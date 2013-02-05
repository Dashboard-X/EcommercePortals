<%@ Page Language="C#" AutoEventWireup="true" CodeFile="updt.aspx.cs" Inherits="updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #ffffcc">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" TabIndex="13" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="32pt" Style="font-family: 'Times New Roman'"
            Width="228px" ReadOnly="True" TabIndex="14">UPDATION</asp:TextBox>
        &nbsp;
        <br />
        <br />
        <table style="width: 560px; height: 105px">
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox15" runat="server" Font-Bold="True" Font-Size="10pt" Width="99px" ReadOnly="True" TabIndex="17">CUSTOMER NO.</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox16"
                        ErrorMessage="INFORMATION REQUIRED" Font-Bold="True" Font-Italic="True" Font-Size="8pt"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" Font-Size="10pt" Width="93px" ReadOnly="True" TabIndex="18">PICK UP DATE</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:TextBox ID="TextBox13" runat="server" TabIndex="1"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cal.gif" OnClick="ImageButton2_Click" TabIndex="2" /></td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                        Font-Size="8pt" ForeColor="#003399" Height="94px" OnSelectionChanged="Calendar1_SelectionChanged"
                        Visible="False" Width="117px" TabIndex="15">
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
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox13"
                        OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="8pt"
                        ForeColor="Red" Text="ENTER THE CORRECT DATE" Visible="False" Width="169px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" Font-Size="10pt" Width="102px" ReadOnly="True" TabIndex="19">PICK OFF DATE</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:TextBox ID="TextBox14" runat="server" TabIndex="3"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/cal.gif" OnClick="ImageButton3_Click" TabIndex="4" /></td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana"
                        Font-Size="8pt" ForeColor="#003399" Height="97px" OnSelectionChanged="Calendar2_SelectionChanged"
                        Visible="False" Width="117px" TabIndex="16">
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
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox12" runat="server" Font-Bold="True" Width="83px" ReadOnly="True" TabIndex="20">NO. OF DAYS</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:TextBox ID="TextBox2" runat="server" TabIndex="5"></asp:TextBox></td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Bold="True" Font-Size="10pt" Width="86px" ReadOnly="True" TabIndex="21">PICK IN CITY</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                        DataTextField="CNAME" DataValueField="CNAME" TabIndex="6">
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString20 %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString20.ProviderName %>" SelectCommand='SELECT "CNAME" FROM "CITY"'>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Bold="True" Font-Size="10pt" Width="101px" ReadOnly="True" TabIndex="22">DROP OFF CITY</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2"
                        DataTextField="CNAME" DataValueField="CNAME" TabIndex="7">
                    </asp:DropDownList>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:CheckBox ID="CheckBox1" runat="server" Height="1px" Width="1px" TabIndex="8" /><asp:TextBox
                        ID="TextBox7" runat="server" Font-Bold="True" ReadOnly="True" TabIndex="23">AC(Extra Rs 500/-)</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:CheckBox ID="CheckBox2" runat="server" Height="1px" Width="1px" TabIndex="9" />
                    <asp:TextBox ID="TextBox10" runat="server" Font-Bold="True" TabIndex="24">Driver(Extra Rs 500/-)</asp:TextBox></td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox8" runat="server" Font-Bold="True" Width="79px" ReadOnly="True" TabIndex="25">CAR MODEL</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3"
                        DataTextField="MODEL" DataValueField="MODEL" Font-Bold="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" TabIndex="10">
                    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString14 %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString14.ProviderName %>" SelectCommand='SELECT "MODEL" FROM "RENT"'>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="9pt"
                        Style="color: red" Text="Car Not Available" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 240px">
                    <asp:TextBox ID="TextBox9" runat="server" Font-Bold="True" Width="36px" ReadOnly="True" TabIndex="26">RENT</asp:TextBox></td>
                <td style="width: 246px">
                    <asp:TextBox ID="TextBox11" runat="server" TabIndex="11"></asp:TextBox></td>
                <td>
                </td>
            </tr>
            <tr>
                <td style="width: 240px">
                </td>
                <td style="width: 246px">
                    <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="Outset" Font-Bold="True"
                        Font-Size="16pt" OnClick="LinkButton1_Click" Style="color: white; background-color: black" TabIndex="12">UPDATE</asp:LinkButton></td>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="12pt" Text="UPDATED SUCCESSFULLY..."
                        Visible="False" Width="218px" TabIndex="27"></asp:Label></td>
            </tr>
        </table>
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:LinkButton
            ID="LinkButton2" runat="server" Font-Bold="True" Font-Size="11pt" OnClick="LinkButton2_Click"
            Style="color: green">Home</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="11pt"
            OnClick="LinkButton3_Click" Style="color: green">About Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="11pt"
            OnClick="LinkButton4_Click" Style="color: green">Developers</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="11pt"
            OnClick="LinkButton5_Click" Style="color: green">Contact Us</asp:LinkButton>&nbsp;
        <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="11pt"
            OnClick="LinkButton6_Click" Style="color: green">Help</asp:LinkButton></div>
    </form>
</body>
</html>
