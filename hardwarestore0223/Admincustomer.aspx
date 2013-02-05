<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true"
    CodeBehind="Admincustomer.aspx.cs" Inherits="CopmuterOnLine.Admincustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="tbl1" border="0" style="background-color: #F5F6CE; width: 548px;">
        <tr>
            <td colspan="2">
                <asp:Button ID="btnAddNew" runat="server" OnClick="btnAddNew_Click" 
                    Text="Add New Customer" Enabled="False" />
            </td>
            <td rowspan="8" style="vertical-align: top; background-color: #F6CEE3; width: 268435456px;">
                
                <asp:Image ID="Image1" runat="server" Width="143px" Height="137px" 
                    ImageUrl='<%# Eval("imageURL","~/images/{0}") %>' />
                
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
                Search By:
            </td>
            <td style="width: 168px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
                User Name or Emai:
            </td>
            <td style="width: 168px">
                <asp:TextBox ID="txtUserSearch" runat="server" Width="102px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 103px;">
                &nbsp;
            </td>
            <td style="height: 17px; width: 168px;">
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
                &nbsp;
            </td>
            <td style="width: 168px">
                Leave fields blank to return all
            </td>
        </tr>
        <tr>
            <td style="width: 103px">
                &nbsp;
            </td>
            <td style="width: 168px">
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <asp:GridView ID="gvSearchResults" runat="server" AutoGenerateColumns="False" OnRowCommand="gvSearchResults_RowCommand"
                    DataKeyNames="CustomerID" Width="303px" AllowSorting="True" OnSorting="gvSearchResults_Sorting"
                    AllowPaging="True" OnPageIndexChanging="gvSearchResults_PageIndexChanging" OnRowDataBound="gvSearchResults_RowDataBound"
                    ShowFooter="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None"
                    BorderWidth="1px" CellPadding="4" Height="104px" PageSize="4">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Name" />
                        <asp:ButtonField CommandName="Select" Text="Select" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <table id="tbl2" border="1" width="550" style="background-color: #A9F5F2">
        <tr>
            <td colspan="2" align="center">
                <h3>
                    Customer Infromation</h3>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUser" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPwd" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcompany" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtComp" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblOrgNum" runat="server" Text="Org. Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtOrg" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblContact" runat="server" Text="Phone Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContact" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAttention" runat="server" Text="Fax Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAttention" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAddr" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddr" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPcode" runat="server" Text="Postal Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPostal" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCountry" runat="server" Width="230px"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>Load Image
            </td>
            <td>
                <asp:FileUpload ID="fupImage" runat="server" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage=""
                    OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                <asp:Label ID="Label1" runat="server" Text="Load Your personal photograph"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnAdd" runat="server" Text="Add New Product" 
                    OnClick="btnAdd_Click" Width="130px"
                    BackColor="#FFC1C1" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="117px" OnClick="btnUpdate_Click"
                    BackColor="#FFC1C1" />
                <asp:Button ID="btnDel" runat="server" Text="Delete" Width="81px" OnClick="btnDel_Click"
                    BackColor="#FFC1C1" />
            </td>
        </tr>
    </table>
</asp:Content>
