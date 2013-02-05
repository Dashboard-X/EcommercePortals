<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custdetail.aspx.cs" Inherits="custdetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #ccccff">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1"
            Style="color: white; background-color: #000000" Text="LOGOUT" /><br />
        &nbsp; &nbsp; 
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" Font-Underline="True"
            Text=" CUSTOMER DETAIL"></asp:Label><br />
        <br />
        <br />
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical"
            Width="440px">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="CNO" HeaderText="CNO" ReadOnly="True" SortExpression="CNO" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                <asp:BoundField DataField="EMAILID" HeaderText="EMAILID" SortExpression="EMAILID" />
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
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="Gainsboro" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString15 %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString15.ProviderName %>" SelectCommand='SELECT * FROM "CUSTINF"'>
        </asp:SqlDataSource>
        &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
