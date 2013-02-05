<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="CopmuterOnLine.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1><asp:Literal ID="ltProductName" runat="server"></asp:Literal></h1>
<asp:Literal ID="ltDescription" runat="server"></asp:Literal><br /><br />
Price excluding VAT: <asp:Literal ID="ltPriceExSaleTax" runat="server" ></asp:Literal><br />
Sale tax (VAT %): <asp:Literal ID="ltSaleTax" runat="server"></asp:Literal> (<asp:Literal ID="ltSaleTaxPercent" runat="server"></asp:Literal>)<br />
Price including VAT: <asp:Literal ID="ltTotalPrice" runat="server"></asp:Literal><br /><br />
Quantity: <asp:TextBox ID="txtQuantity" Width="50px" runat="server" Text="1"></asp:TextBox> <asp:Button ID="btnBuy" runat="server" Text="Buy" OnClick="btnBuy_Click" /><br /><br />
    <asp:Button ID="btnCart" runat="server" Text="Go to shopping cart" 
        onclick="btnCart_Click" />
<asp:HiddenField ID="HiddenProductID" runat="server" />
</asp:Content>

