<%@ Page Title="" Language="C#" MasterPageFile="~/CompOnLine.Master" AutoEventWireup="true"
    CodeBehind="laptop.aspx.cs" Inherits="CopmuterOnLine.laptop" %>

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
                    <img src="images/laptop1a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/laptop1.jpg')">
                        <asp:Button ID="btnlpt1D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btnlpt1C" runat="server" Text="Add to Cart"/></a>
                </div>
            </td>
            <td>
                <div>
                    <img src="images/laptop2a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/laptop2.jpg')">
                        <asp:Button ID="btnlpt2D" runat="server" Text="View Details" /></a>
                   <a href="Default.aspx"><asp:Button ID="btnlpt2C" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <img src="images/laptop3a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/laptop3.jpg')">
                        <asp:Button ID="btnlpt3D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btnlpt3C" runat="server" Text="Add to Cart"  /></a>
                </div>
            </td>
            <td>
                <div>
                    <img src="images/laptop4a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/laptop4.jpg')">
                        <asp:Button ID="btnlpt4D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btnlpt4C" runat="server" Text="Add to Cart" /></a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <img src="images/laptop5a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/laptop5.jpg')">
                        <asp:Button ID="btnlpt5D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btnlpt5C" runat="server" Text="Add to Cart"  /></a>
                </div>
            </td>
            <td>
                <div>
                    <img src="images/laptop6a.jpg" alt="" width="274" height="170" />
                    <a href="javascript: void(0)" onclick="popup('images/laptop5.jpg')">
                        <asp:Button ID="btnlpt6D" runat="server" Text="View Details" /></a>
                    <a href="Default.aspx"><asp:Button ID="btnlpt6C" runat="server" Text="Add to Cart"/></a>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
