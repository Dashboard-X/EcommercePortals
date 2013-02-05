<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Paypal.aspx.cs" Inherits="CopmuterOnLine.Paypal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        
            <h3>

        
            <asp:Label ID="lblHeader" runat="server" CssClass="header" 
                Text="PayPal Payflow Pro Online Credit Card Transaction"></asp:Label>
            </h3>
            <br />
            <br />
            <asp:Label ID="lblError" runat="server" CssClass="error-text"></asp:Label>
        
        
                        <table>
               <tr>
                    <td width="160" style="font-family: Arial">
                        Amount to Charge</td>
                    <td>                     
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="paymentinfo-text" 
                            Width="150px" style="font-family: Arial">25.50</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="160">
                        <span style="font-family: Arial">Card Type </span> <span class="star" 
                            style="font-family: Arial">*</span></td>
                    <td>
                        <asp:DropDownList ID="ddlCardType" runat="server" CssClass="paymentinfo-text" 
                            style="font-family: Arial">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>MasterCard</asp:ListItem>
                            <asp:ListItem Selected="True">Visa</asp:ListItem>
                            <asp:ListItem>American Express</asp:ListItem>
                            <asp:ListItem>Diners Club</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="ddlCardType" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Required" style="font-family: Arial" 
                            ></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="font-family: Arial">Card Number </span> <span class="star" 
                            style="font-family: Arial">*</span></td>
                    <td>
                        <asp:TextBox ID="txtCardNumber" runat="server" CssClass="paymentinfo-text" 
                            Width="150px" style="font-family: Arial">4111111111111111</asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtCardNumber" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Required" style="font-family: Arial"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="font-family: Arial">Name on Card </span> <span class="star" 
                            style="font-family: Arial">*</span></td>
                    <td>
                        <asp:TextBox ID="txtNameOnCard" runat="server" CssClass="paymentinfo-text" 
                            Width="150px" style="font-family: Arial">John Deo</asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtNameOnCard" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Required" style="font-family: Arial"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <span style="font-family: Arial">Expiration </span> <span class="star" 
                            style="font-family: Arial">*</span></td>
                    <td>
                        <asp:DropDownList ID="ddlMonth" runat="server" CssClass="paymentinfo-text" 
                            style="font-family: Arial">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlYear" runat="server" CssClass="paymentinfo-text" 
                            style="font-family: Arial">
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="ddlMonth" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Month required" style="font-family: Arial"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="ddlYear" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage=" Year required" style="font-family: Arial"></asp:RequiredFieldValidator>
                    </td>
                </tr>
               <tr>
                    <td valign="top">
                        <span style="font-family: Arial">Card Security Code </span> <span class="star" 
                            style="font-family: Arial">*</span></td>
                    <td align="left">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr><td width="50">
                        <asp:TextBox ID="txtCvv" runat="server" CssClass="paymentinfo-text" 
                            Width="35px" style="font-family: Arial">123</asp:TextBox>
                            <span style="font-family: Arial">&nbsp; 
                            </span> 
                            </td><td valign="top" class="cvv-text">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtCvv" Display="Dynamic" CssClass="error-text" 
                            ErrorMessage="Required" style="font-family: Arial"></asp:RequiredFieldValidator>
                                <span style="font-family: Arial">A code that is printed (not imprinted) on the back of 
                                a credit card. It consist of 3 or 4 digits.
                        </span>
                        </td></tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" 
                            onclick="btnSubmit_Click" style="font-family: Arial" />
                        <span style="font-family: Arial">&nbsp;
                        </span>
                        <input id="btnCancel" type="reset" value="Cancel" class="button" 
                            style="font-family: Arial" /><span style="font-family: Arial"> 
</span>
                        
                        </td>
                </tr>
            </table><br />
            <hr width="70%" />
            <asp:Label ID="lblResult" runat="server" Width="70%" CssClass="standard-text"></asp:Label>
 
       
   
</asp:Content>
