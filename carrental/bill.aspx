<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #cccc99">
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Enter Your Customer No."></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="12pt" OnClick="Button1_Click"
            Text="Show Details" /><br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" Text="Customer Details"
            Visible="False" Width="155px"></asp:Label><br />
        &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CNO"
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="CNO" HeaderText="CNO" ReadOnly="True" SortExpression="CNO" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="PUD" HeaderText="PUD" SortExpression="PUD" />
                <asp:BoundField DataField="DOD" HeaderText="DOD" SortExpression="DOD" />
                <asp:BoundField DataField="NOD" HeaderText="NOD" SortExpression="NOD" />
                <asp:BoundField DataField="PIC" HeaderText="PIC" SortExpression="PIC" />
                <asp:BoundField DataField="DOC" HeaderText="DOC" SortExpression="DOC" />
                <asp:BoundField DataField="AC" HeaderText="AC" SortExpression="AC" />
                <asp:BoundField DataField="DRIVER" HeaderText="DRIVER" SortExpression="DRIVER" />
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" SortExpression="MODEL" />
                <asp:BoundField DataField="RATE" HeaderText="RATE" SortExpression="RATE" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString18 %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString18.ProviderName %>" SelectCommand='SELECT * FROM "CUSTINF" WHERE ("CNO" = :CNO)'>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="CNO" PropertyName="Text" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True"
            Font-Size="16pt" Text="Your Billing Details" Visible="False" Width="179px"></asp:Label><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CNO"
            DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="CNO" HeaderText="CNO" ReadOnly="True" SortExpression="CNO" />
                <asp:BoundField DataField="PUD" HeaderText="PUD" SortExpression="PUD" />
                <asp:BoundField DataField="POD" HeaderText="POD" SortExpression="POD" />
                <asp:BoundField DataField="NOD" HeaderText="NOD" SortExpression="NOD" />
                <asp:BoundField DataField="AC" HeaderText="AC" SortExpression="AC" />
                <asp:BoundField DataField="DRIVER" HeaderText="DRIVER" SortExpression="DRIVER" />
                <asp:BoundField DataField="RATE(PER DAY)" HeaderText="RATE(PER DAY)" SortExpression="RATE(PER DAY)" />
                <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            </Columns>
        </asp:GridView>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString17 %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString17.ProviderName %>" SelectCommand='SELECT * FROM "BILLING" WHERE ("CNO" = :CNO)'>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="CNO" PropertyName="Text" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:View ID="View1" runat="server">
        </asp:View>
    </div>
    </form>
</body>
</html>
