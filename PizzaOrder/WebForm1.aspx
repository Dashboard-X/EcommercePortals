<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WebForm1.aspx.vb" Inherits="Pizza_Order.WebForm1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Pizza Order Application</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" style="Z-INDEX: 101; LEFT: 88px; POSITION: absolute; TOP: 88px" runat="server">Customer Name</asp:Label>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 102; LEFT: 208px; POSITION: absolute; TOP: 88px" runat="server"
				MaxLength="100"></asp:TextBox>
			<asp:Label id="Label2" style="Z-INDEX: 103; LEFT: 120px; POSITION: absolute; TOP: 120px" runat="server">Pizza Type</asp:Label>
			<asp:RadioButtonList id="RadioButtonList1" style="Z-INDEX: 104; LEFT: 200px; POSITION: absolute; TOP: 120px"
				runat="server">
				<asp:ListItem Value="0" Selected="True">Cheese</asp:ListItem>
				<asp:ListItem Value="1">Pineapple</asp:ListItem>
				<asp:ListItem Value="2">Hawaiian</asp:ListItem>
			</asp:RadioButtonList>
			<asp:Label id="Label3" style="Z-INDEX: 105; LEFT: 120px; POSITION: absolute; TOP: 208px" runat="server">Comments</asp:Label>
			<asp:TextBox id="TextBox2" style="Z-INDEX: 106; LEFT: 208px; POSITION: absolute; TOP: 208px"
				runat="server" TextMode="MultiLine" Columns="30" Rows="5"></asp:TextBox>
			<asp:Button id="Button1" style="Z-INDEX: 107; LEFT: 352px; POSITION: absolute; TOP: 312px" runat="server"
				Text="Submit Order"></asp:Button>
			<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="Z-INDEX: 108; LEFT: 376px; POSITION: absolute; TOP: 88px"
				runat="server" ErrorMessage="Required !" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
			<asp:Label id="Label4" style="Z-INDEX: 109; LEFT: 192px; POSITION: absolute; TOP: 24px" runat="server"
				Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="Blue">Pizza Order Form</asp:Label>
		</form>
	</body>
</HTML>
