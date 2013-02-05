<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="AuctionOnline.Admin.WebForm1" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 58px;
        }
        .style3
        {
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:Menu ID="Menu1" runat="server" Font-Bold="True" 
            Height="16px" onmenuitemclick="Menu1_MenuItemClick" Orientation="Horizontal" 
            Width="699px" ForeColor="Red">
            <Items>
                <asp:MenuItem Text="Create User     " Value="0"></asp:MenuItem>
                <asp:MenuItem Text="Make Admin     " Value="1"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="Cuser" runat="server">
                <table cellspacing="5px;" class="style1">
                    <tr>
                        <td align="center" class="style3">
                            User Name
                        </td>
                        <td class="style2" width="250">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
                                TargetControlID="TextBox1" WatermarkText="Enter Your Name"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Email</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" 
                                TargetControlID="TextBox2" WatermarkText="Email Address"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Password</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" 
                                TextMode="Password" Width="200px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" 
                                TargetControlID="TextBox3" WatermarkText="Enter Password"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td width="250">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Date Of Birth</td>
                        <td class="style2">
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                PopupButtonID="TextBox4" TargetControlID="TextBox4"></asp:CalendarExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Country</td>
                        <td class="style2">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
                                Height="35px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Mobile</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" 
                                TargetControlID="TextBox5" WatermarkText="Mobile Number Without Zero"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="CompareValidator" 
                                Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Secret Qusetion</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" 
                                TargetControlID="TextBox6" WatermarkText="Enter Question"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Secret Answer</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox" Width="200px"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" runat="server" 
                                TargetControlID="TextBox7" WatermarkText="Enter Answer"></asp:TextBoxWatermarkExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            Active</td>
                        <td class="style2">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="textbox" 
                                Height="35px" Width="200px">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">DeActive</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style3">
                            User Type</td>
                        <td class="style2">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="textbox" 
                                Height="35px" Width="200px">
                                <asp:ListItem>ADMIN</asp:ListItem>
                                <asp:ListItem>USER</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                        <td align="center" class="style2">
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Height="30px" 
                                onclick="Button1_Click" Text="Save" Width="100px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uid" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Width="692px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="uid" HeaderText="uid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="uid" />
                        <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                        <asp:BoundField DataField="Active" HeaderText="Active" 
                            SortExpression="Active" />
                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
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
                    DeleteCommand="DELETE FROM [user1] WHERE [uid] = @original_uid AND [UName] = @original_UName AND [Email] = @original_Email AND [password] = @original_password AND [Active] = @original_Active AND [type] = @original_type" 
                    InsertCommand="INSERT INTO [user1] ([UName], [Email], [password], [Active], [type]) VALUES (@UName, @Email, @password, @Active, @type)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT [uid], [UName], [Email], [password], [Active], [type] FROM [user1]" 
                    UpdateCommand="UPDATE [user1] SET [UName] = @UName, [Email] = @Email, [password] = @password, [Active] = @Active, [type] = @type WHERE [uid] = @original_uid AND [UName] = @original_UName AND [Email] = @original_Email AND [password] = @original_password AND [Active] = @original_Active AND [type] = @original_type">
                    <DeleteParameters>
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_UName" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_Active" Type="String" />
                        <asp:Parameter Name="original_type" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="Active" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="original_uid" Type="Int32" />
                        <asp:Parameter Name="original_UName" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_Active" Type="String" />
                        <asp:Parameter Name="original_type" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UName" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="Active" Type="String" />
                        <asp:Parameter Name="type" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </asp:View>
           
            
               
               
                
            
        </asp:MultiView>
</p>
   
   


   


</asp:Content>

<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">

               <asp:Label ID="Label2" runat="server" ForeColor="White" Text=" "></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Log out</asp:LinkButton>
</asp:Content>


