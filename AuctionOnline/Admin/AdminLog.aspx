<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLog.aspx.cs" Inherits="AuctionOnline.Admin.AdminLog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login</title>
    <LINK REL=StyleSheet HREF="css/main.css" TYPE="text/css" MEDIA=screen>
    <style type="text/css">
    .log
    {
  height:400px;
  width:auto;
      }
      .show
      {
      	width:255px;
      	height:205px;
      	margin-left:400px;
      
      }
      
      
      
    </style>
    
</head>
<body class="body">
    <form id="form1" runat="server">
    <div id="container">
       <div class="log">
   
           <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
   
    </div>
     <div class="show">
        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" 
            Height="200px" Width="250px" onauthenticate="Login1_Authenticate">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>
    
    </div>
    </div>
    </form>
</body>
</html>
