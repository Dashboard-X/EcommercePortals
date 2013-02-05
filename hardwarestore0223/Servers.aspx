<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true" CodeBehind="Servers.aspx.cs" Inherits="CopmuterOnLine.Servers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <table>
        <tr>
            <td>
                <div>
                    <img src="images/server1a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/server1.jpg')">
                        <asp:Button ID="btnDsk1D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btnDsk1C" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
            <td>
                <div>
                    <img src="images/sever2a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/server2.jpg')">
                        <asp:Button ID="btndskt2D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btndskt2C" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <img src="images/server3a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/server3.jpg')">
                        <asp:Button ID="Button1" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="Button2" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
            <td>
                <div>
                    <img src="images/server4a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/server4.jpg')">
                        <asp:Button ID="Button3" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="Button4" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <img src="images/sever5a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/server5.jpg')">
                        <asp:Button ID="Button5" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="Button6" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
            <td>
                <div>
                    <img src="images/server6a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/server6.jpg')">
                        <asp:Button ID="Button7" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="Button8" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
