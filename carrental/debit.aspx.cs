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

public partial class debit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Int16.Parse(TextBox1.Text) != 500)
        {
            TextBox1.Text = "";
            Label4.Visible = true;

        }

        else
        {
            Label4.Visible = false;
            Label5.Visible = true;
        }
        if (Label5.Visible)
        {
            RequiredFieldValidator1.Enabled = false;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
}
