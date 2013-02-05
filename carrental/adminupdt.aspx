<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminupdt.aspx.cs" Inherits="adminupdt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24pt"
            Text="UPDATION"></asp:Label><br />
        <br />
    </div>
        <div>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" Text="TO ADD A NEW CITY"></asp:Label><br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Enter A New City"></asp:Label>
            &nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                Text="INSERT" /><br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="14pt" Text="TO ADD A NEW VEHICLE"
                Width="236px"></asp:Label><br />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" Text="Type"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Model"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="12pt" Text="SCAP"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="12pt" Text="Rate"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="12pt" Text="Available"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="12pt" Text="1 for Available"></asp:Label><br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp;&nbsp;<br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Button
                ID="Button2" runat="server" Font-Bold="True" OnClick="Button2_Click" Text="INSERT" /><br />
            <br />
            <br />
    
    </div>
    </form>
</body>
</html>
