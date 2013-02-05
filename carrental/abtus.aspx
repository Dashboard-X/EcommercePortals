<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abtus.aspx.cs" Inherits="abtus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #ccff99; text-align: left">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/images.jpeg" />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True"
            Font-Size="24pt" ForeColor="#660000" Text="ABOUT US" Width="164px"></asp:Label>
        &nbsp;&nbsp; &nbsp; &nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2"
            runat="server" Height="170px" ImageUrl="~/images/abtus.JPG" Width="207px" />
        &nbsp;&nbsp;<br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <br />
        <br />
        <span style="font-size: 14pt"><strong><span style="color: #003300; font-family: 'Times New Roman', Georgia">
            "Applying thoughts technically...."&nbsp;<br />
        </span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; </strong><span style="color: #cc9900">-</span><span style="color: #cc9900"><strong><em>Dheeraj
                Kohli<br />
            </em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </strong>-</span><span style="color: #cc9900"><strong><em>Shikha Agrawal<br />
            </em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </strong>-</span><strong><span style="color: #cc9900"><em>Mahendra Rajpoot&nbsp;<br />
                <br />
                <span style="color: #666600"><span style="color: black">We visioned the real</span>
                    'desi' <span style="color: black">world, into a more compact and sophisticated preforma,
                        i.e the way of doing things technically. It&nbsp; was a belief in mind that <span
                            style="color: maroon">'Tourist Vehicle Rent',&nbsp; <span style="color: black">although
                                being irrational, was perceived and envisaged by <span style="color: goldenrod">WE THREE</span><span
                                    style="color: black"> , during our trip to Goa, this summer.</span> There we
                                visualized the privatization of the field related to tourist vehicle that are sponsored
                                to them at pay-per-day basis. So, we thought of manipulating the same with a tinge
                                of modernization, and while keeping in mind, about the complexities involved in
                                project, we threw it into various segments/modules, to make the concept clear and
                                simple.<br />
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; While working
                                on the same theme, we devised a minor project on it, successfully. It took about
                                2 months to complete, while going through each and every aspects of the real world.
                                Being founded on <span style="color: darkred">6th September 2009</span>, it needed
                                many reforms and modifications to get the ultimate thing of it.</span></span></span></span><br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/abtus.xml"></asp:XmlDataSource>
                <br />
                <br />
            </em>&nbsp;</span> &nbsp; </strong></span>&nbsp; &nbsp;&nbsp;
    </div>
        <strong><span style="font-size: 14pt"></span></strong>
        <div>
            <br />
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;</div>
    </form>
</body>
</html>
