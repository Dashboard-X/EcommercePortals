<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="CopmuterOnLine.Default" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function popup(url) {
            var width = 600;
            var height = 400;
            var left = (screen.width - width) / 2;
            var top = (screen.height - height) / 2;
            var params = 'width=' + width + ', height=' + height;
            params += ', top=' + top + ', left=' + left;
            params += ', toolbar=no';
            params += ', menubar=no';
            params += ', resizable=yes';
            params += ', directories=no';
            params += ', scrollbars=yes';
            params += ', status=no';
            params += ', location=no';
            newwin = window.open(url, 'd', params);
            if (window.focus) {
                newwin.focus()
            }
            return false;
        }
    </script>
    <div>
        <h1>
            Welcome to my webshop</h1>
        I have one customer with the username of "emad_maan@yahoo.com" and a password of
        "maanmaan" and a second customer with the username of "go@customer.com" and a password
        of "customer" <h5 style="text-decoration: underline">for Admin user "emad_maan@yahoo.com", security code "2222"</h5>. Here below are a page lised of the products that this webshop sells
        and you have to click on one product to view it and to buy units of this product.<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="XV7GZG5CJXDDA">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
<br />
        <br />
        <asp:Repeater ID="ProductListRepeater" runat="server">
            <HeaderTemplate>
                <table style="width: 500px">
            </HeaderTemplate>
            <ItemTemplate>
            

                <tr>
                    <td style="width: 30%; font-weight: bolder; background-color: Silver" align="center">
                        <asp:HyperLink ID="ltProductID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductID")%>'
                            NavigateUrl='<%#GenerateURL(Eval("ProductID"))%>'></asp:HyperLink>
                    </td>
                    <td style="width: 100%; font-weight: bolder; background-color: Silver" align="center">
                        <asp:HyperLink ID="ltProductName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductName")%>'
                            NavigateUrl='<%#GenerateURL(Eval("ProductID"))%>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Literal ID="ltDescription" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Description")%>'></asp:Literal><br />
                        <br />
                        Price excluding VAT:
                        <asp:Literal ID="ltPriceExSaleTax" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "PriceExSaleTax")%>'></asp:Literal><br />
                        Sale tax (VAT %):
                        <asp:Literal ID="ltSaleTax" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SaleTaxMoney")%>'></asp:Literal>
                        (<asp:Literal ID="ltSaleTaxPercent" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SaleTaxPercent", "{0:P}")%>'></asp:Literal>)<br />
                        Price including VAT:
                        <asp:Literal ID="ltTotalPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "TotalPrice")%>'></asp:Literal><br />
                        <br />
                        <asp:HyperLink ID="hplLinkToProduct" runat="server" NavigateUrl='<%#GenerateURL(Eval("ProductID"))%>'>Click here to buy this product</asp:HyperLink><br />
                        <br />
                    </td>
                    <td align="center">
                        <a href="javascript: void(0)" onclick="popup('<%# Eval("imagePOP","~/images/{0}") %>')">
                            <asp:Image ID="Image1" runat="server" Width="274" Height="130" ImageUrl='<%# Eval("imageURL","~/images/{0}") %>' /></a>
                    <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="XV7GZG5CJXDDA">
<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table> </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:HyperLink ID="lnkPrev" Visible="false" runat="server" Text="Previous"></asp:HyperLink>
        <asp:Label ID="lblCurrentPage" runat="server" />
        <asp:HyperLink ID="lnkNext" Visible="false" runat="server" Text="Next"></asp:HyperLink><br />
        <br />
        <br />
    </div>
</asp:Content>

