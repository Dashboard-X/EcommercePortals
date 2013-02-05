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


public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "shikha")
        {
            if (TextBox2.Text == "chuchu")
            {
                TextBox1.Text = " ";
                TextBox2.Text = " ";
                Response.Redirect("cdetail.aspx");
              
            }
        }
        else
        {
            Label3.Text = "access denied";
            TextBox1.Text = " ";
            TextBox2.Text = " ";
        }
      

    }
    protected void XmlDataSource1_Transforming(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("abtus.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("developer.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("help.aspx");
    }
    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {

    }
}
