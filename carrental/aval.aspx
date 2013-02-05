<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aval.aspx.cs" Inherits="aval" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #cccccc">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt" Font-Underline="True"
            Text="CARS AVAILABLE" Width="287px"></asp:Label><br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="160px">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="MODEL" HeaderText="MODEL" ReadOnly="True" SortExpression="MODEL" />
                <asp:BoundField DataField="AVAILABLE" HeaderText="AVAILABLE" SortExpression="AVAILABLE" />
            </Columns>
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="Gainsboro" />
        </asp:GridView>
        <span style="font-size: 16pt"><strong><span style="text-decoration: underline">NOTE:</span></strong>
        </span><span style="font-size: 14pt"><strong>1 For Available &amp; 0 For Unavailable.</strong>&nbsp;</span><br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand='SELECT "MODEL", "AVAILABLE" FROM "VEHICLE"'
            UpdateCommand="UPDATE VEHICLE SET AVAILABLE = 0 WHERE MODEL=800"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
