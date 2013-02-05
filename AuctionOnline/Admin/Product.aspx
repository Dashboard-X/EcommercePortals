<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="AuctionOnline.Admin.WebForm2" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style2
        {
            width: 188px;
        }
        .style3
        {
            width: 170px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Menu ID="Menu1" runat="server" ForeColor="#CC0000" 
            onmenuitemclick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Rigester Product " Value="0"></asp:MenuItem>
                <asp:MenuItem Text="Active -- DeActive" Value="1"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
               <table class="style1">
                    <tr>
                        <td class="style3">
                            Product Name</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Product type</td>
                        <td class="style2">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
                                Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Company</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Model</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Warranty</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="200px">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="CompareValidator" 
                                Operator="DataTypeCheck" Type="Integer">Insert number only</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Product Image</td>
                        <td class="style2">
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            Date</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1"
                                runat="server" PopupButtonID="TextBox5" TargetControlID="TextBox5"></asp:CalendarExtender>
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td align="center" class="style2">
                            <asp:Button ID="Button1" runat="server" CssClass="textbox" ForeColor="#000099" 
                                onclick="Button1_Click" Text="Save" Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table> 
            </asp:View>
            <asp:View ID="View2" runat="server">
             <div style="overflow:auto;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="p_id" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" Width="695px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="p_id" HeaderText="p_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="p_id" />
                        <asp:BoundField DataField="p_name" HeaderText="p_name" 
                            SortExpression="p_name" />
                        <asp:BoundField DataField="pt_id" HeaderText="pt_id" SortExpression="pt_id" />
                        <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                        <asp:BoundField DataField="Active" HeaderText="Active" 
                            SortExpression="Active" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:AuctionConnectionString %>" 
                    DeleteCommand="DELETE FROM [Product] WHERE [p_id] = @original_p_id AND [p_name] = @original_p_name AND [pt_id] = @original_pt_id AND [uid] = @original_uid AND [status] = @original_status AND (([Active] = @original_Active) OR ([Active] IS NULL AND @original_Active IS NULL))" 
                    InsertCommand="INSERT INTO [Product] ([p_name], [pt_id], [uid], [status], [Active]) VALUES (@p_name, @pt_id, @uid, @status, @Active)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [p_id], [p_name], [pt_id], [uid], [status], [Active] FROM [Product]" 
                    UpdateCommand="UPDATE [Product] SET [p_name] = @p_name, [pt_id] = @pt_id, [uid] = @uid, [status] = @status, [Active] = @Active WHERE [p_id] = @original_p_id AND [p_name] = @original_p_name AND [pt_id] = @original_pt_id AND [uid] = @original_uid AND [status] = @original_status AND (([Active] = @original_Active) OR ([Active] IS NULL AND @original_Active IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_p_id" Type="Int32" />
                        <asp:Parameter Name="original_p_name" Type="String" />
                        <asp:Parameter Name="original_pt_id" Type="Int32" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_status" Type="String" />
                        <asp:Parameter Name="original_Active" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="p_name" Type="String" />
                        <asp:Parameter Name="pt_id" Type="Int32" />
                        <asp:Parameter Name="uid" Type="Int32" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="Active" Type="String" />
                        <asp:Parameter Name="original_p_id" Type="Int32" />
                        <asp:Parameter Name="original_p_name" Type="String" />
                        <asp:Parameter Name="original_pt_id" Type="Int32" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_status" Type="String" />
                        <asp:Parameter Name="original_Active" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="p_name" Type="String" />
                        <asp:Parameter Name="pt_id" Type="Int32" />
                        <asp:Parameter Name="uid" Type="Int32" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="Active" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                </div>
            </asp:View>
            <br />
            <br />
        </asp:MultiView>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

               <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log Out</asp:LinkButton>
</asp:Content>

