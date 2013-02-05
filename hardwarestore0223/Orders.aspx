<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="CopmuterOnLine.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="OrderListPanel" runat="server" Visible="true">
        <h1>
            List of orders</h1>
        Here below are a list of all orders made by the signed in customer. Click the "View"
        button to see a order confirmation of the specific order. We use a repeater control
        without any paging. If you want paging you can use a gridview instead or implement
        paging for a repeater control.<br />
        <br />
        <asp:Repeater ID="OrderListRepeater" runat="server" OnItemCommand="OrderListRepeater_ItemCommand">
            <HeaderTemplate>
                <table border="0" width="500px" cellpadding="1" cellspacing="0" style="border: solid 1px silver">
                    <tr style="background-color: Silver">
                        <th>
                            Order #
                        </th>
                        <th>
                            Order date
                        </th>
                        <th>
                            Company
                        </th>
                        <th>
                            Contact
                        </th>
                        <th>
                            View order
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="ltOrderID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "OrderID")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltOrderDate" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "OrderDate", "{0:yyyy-MM-dd}")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltCompany" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Company")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltContact" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Contact")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:LinkButton ID="btnView" runat="server" Text="View" CommandArgument='<%# Bind("OrderID") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <br />
    </asp:Panel>
    <asp:Panel ID="OrderPanel" runat="server" Visible="false">
        <br />
        <table width="500" cellpadding="1" cellspacing="0" style="border: solid 1px silver">
            <tr>
                <td style="background-color: Silver; font-weight: bolder; font-size: 20px" colspan="2"
                    rowspan="2">
                    Order confirmation
                </td>
                <td style="width: 25%; font-weight: bolder; background-color: Silver">
                    Order #
                </td>
                <td style="width: 25%; font-weight: bolder; background-color: Silver">
                    Order date
                </td>
            </tr>
            <tr>
                <td style="width: 25%; background-color: Silver">
                    <asp:Label ID="lbOrderID" runat="server"></asp:Label>
                </td>
                <td style="width: 25%; background-color: Silver">
                    <asp:Label ID="lbOrderDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    &nbsp;
                </td>
                <td style="width: 25%">
                    &nbsp;
                </td>
                <td style="width: 25%">
                    &nbsp;
                </td>
                <td style="width: 25%">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    Name:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbName" runat="server"></asp:Label>
                </td>
                <td style="width: 25%">
                    Customer #:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbCustomerNumber" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    Attention:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbAttention" runat="server"></asp:Label>
                </td>
                <td style="width: 25%">
                    Contact:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbContact" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    Adress:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbAdress" runat="server"></asp:Label>
                </td>
                <td style="width: 25%">
                </td>
                <td style="width: 25%">
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    Postal code:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbPostalCode" runat="server"></asp:Label>
                </td>
                <td style="width: 25%">
                </td>
                <td style="width: 25%">
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    City:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbCity" runat="server"></asp:Label>
                </td>
                <td style="width: 25%">
                </td>
                <td style="width: 25%">
                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    Country:
                </td>
                <td style="width: 25%">
                    <asp:Label ID="lbCountry" runat="server"></asp:Label>
                </td>
                <td style="width: 25%">
                </td>
                <td style="width: 25%">
                </td>
            </tr>
        </table>
        <br />
        <asp:Repeater ID="ProductRowRepeater" runat="server">
            <HeaderTemplate>
                <table border="0" width="500px" cellpadding="1" cellspacing="0" style="border: solid 1px silver">
                    <tr style="background-color: Silver">
                        <th>
                            Product #
                        </th>
                        <th>
                            Product name
                        </th>
                        <th>
                            VAT %
                        </th>
                        <th>
                            Quantity
                        </th>
                        <th>
                            Price (excl. VAT)
                        </th>
                        <th>
                            Row sum
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Literal ID="ltProductID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductID")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltProductName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductName")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltVAT" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "VATP")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltQuantity" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Quantity")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "PriceExSaleTax")%>'></asp:Literal>
                    </td>
                    <td>
                        <asp:Literal ID="ltRowSum" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RowSum")%>'></asp:Literal>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <br />
        <table border="0" width="500" cellpadding="1" cellspacing="0">
            <tr>
                <td style="text-align: right;">
                    Sum excluding VAT:
                    <asp:Label ID="lblPriceTotal" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                    VAT in total:
                    <asp:Label ID="lblVatTotal" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                    Totalsum:
                    <asp:Label ID="lblTotalSum" runat="server" Font-Bold="true" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:LinkButton ID="linkOrderList" runat="server" OnClick="linkOrderList_Click">Show order list</asp:LinkButton><br />
        <br />
    </asp:Panel>
    <asp:HiddenField ID="HiddenCustomerID" runat="server" />
</asp:Content>
