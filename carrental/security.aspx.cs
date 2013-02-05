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


public partial class security : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        
     

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("masvis.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("debit.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ibanking.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("masvis.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("masvis.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("debit.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("debit.aspx");
    }

   

    protected void LinkButton3_Click2(object sender, EventArgs e)
    {
        Response.Redirect("ibanking.aspx");
    }
    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ibanking.aspx");
    }
}