<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Registercustomer.aspx.cs" Inherits="CopmuterOnLine.Registercustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="CurrentPanel" runat="server" Visible="true">
        <h1>
            Create a customer account</h1>
        This form is used to register a user in the "Customers" table with username and
        password. The password is encrypted with SHA1 and stored as an encrypted password
        in the "Customers" table. Your account is created when you click the "Sign in" button
        and you then get a confirmation message when the "ThankYouPanel" gets visible.<br />
        <br />
        <table>
            <tr>
                <td style="width: 200px">
                    E-mail:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtUserName" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="txtUserName"
                        Display="Dynamic" ErrorMessage="* A valid email must be entered" Width="216px"
                        ValidationGroup="RegisterCustomer">* A valid email must be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Password:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="* Password must be entered" ValidationGroup="RegisterCustomer"
                        Display="Dynamic" Width="216px">* Password must be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Confirm password:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                    <asp:RequiredFieldValidator ID="PasswordConfirmRequired" runat="server" ControlToValidate="txtConfirmPassword"
                        ErrorMessage="* Password must be entered" ValidationGroup="RegisterCustomer"
                        Display="Dynamic" Width="216px">* Password must be entered</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ComparePassword" runat="server" ControlToCompare="txtPassword"
                        ControlToValidate="txtConfirmPassword" ErrorMessage="* Passwords do not match"
                        Width="216px" ValidationGroup="RegisterCustomer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Company/Name:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtCompanyName" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                    <asp:RequiredFieldValidator ID="CompanyRequired" runat="server" ControlToValidate="txtCompanyName"
                        Display="Dynamic" ErrorMessage="* Company / Name must be entered" Width="216px"
                        ValidationGroup="RegisterCustomer">* Company / Name must be entered</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Organization number:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtOrganisationNumber" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Contact:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtContact" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    C/O or attention:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtAttention" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Box or street address:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtAdress" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Postal Code:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtPostalCode" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    City:
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtCity" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                    Country
                </td>
                <td style="width: 254px">
                    <asp:TextBox ID="txtCountry" runat="server" Width="95%"></asp:TextBox>
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                </td>
                <td style="width: 254px">
                </td>
                <td style="width: 250px">
                </td>
            </tr>
            <tr>
                <td style="width: 200px">
                </td>
                <td style="width: 254px">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="RegisterCustomer"
                        OnClick="btnRegister_Click" />
                </td>
                <td style="width: 250px">
                    <asp:Label ID="SqlEx" runat="server" ForeColor="Red" Width="216px"></asp:Label>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="ThankYouPanel" runat="server" Visible="false">
        <h1>
            Thank you</h1>
        Thank you for register with us.<br />
        <br />
    </asp:Panel>
</asp:Content>
