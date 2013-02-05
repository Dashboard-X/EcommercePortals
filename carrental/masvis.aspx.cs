using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class masvis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Int16.Parse(TextBox3.Text) != 500)
        {
            TextBox3.Text = "";
            //Response.Redirect("masvis.aspx");
            Label8.Visible = true;

        }

        else
        {
            Label8.Visible = false;
            Label7.Visible = true;
        }
    }
        
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("bill.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}
