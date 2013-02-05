<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custpayment.aspx.cs" Inherits="custpayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #ccccff">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" Text="CUSTOMER PAYMENT"
            Width="358px"></asp:Label>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Style="color: white;
            background-color: black" Text="LOGOUT" /><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="125px">Enter Customer No. </asp:TextBox>
        &nbsp; &nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="PUD" HeaderText="PUD" SortExpression="PUD" />
                <asp:BoundField DataField="DOD" HeaderText="DOD" SortExpression="DOD" />
                <asp:BoundField DataField="NOD" HeaderText="NOD" SortExpression="NOD" />
                <asp:BoundField DataField="AC" HeaderText="AC" SortExpression="AC" />
                <asp:BoundField DataField="DRIVER" HeaderText="DRIVER" SortExpression="DRIVER" />
                <asp:BoundField DataField="RATE" HeaderText="RATE" SortExpression="RATE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString16 %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString16.ProviderName %>" SelectCommand='SELECT "NOD", "DRIVER", "RATE", "AC", "PUD", "DOD" FROM "CUSTINF" WHERE ("CNO" = :CNO)'>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="CNO" PropertyName="Text" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True"
            Font-Underline="True" Text="Your Total Bill is:" Visible="False"></asp:Label>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Font-Underline="False" Height="22px" Width="62px"></asp:Label><br />
        &nbsp;<br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" BorderStyle="Outset" Font-Bold="True" Font-Size="12pt"
            OnClick="Button1_Click" Style="color: white; background-color: black" Text="GENERATE BILL" />
        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox><br />
        <br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
