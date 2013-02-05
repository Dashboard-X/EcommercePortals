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
using System.Data.OleDb;


public partial class cncl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection cnn = new OleDbConnection();
        cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
        cnn.Open();
        OleDbCommand cmd;
        string query;
        cmd = new OleDbCommand();
        cmd.Connection = cnn;
        query = "delete from CUSTINF where cno=" + Int16.Parse(TextBox3.Text ) + "";
        cmd = new OleDbCommand(query, cnn);
        cmd.ExecuteNonQuery();
        Label1.Visible = true;
        TextBox3.Text = "";
        cmd.ExecuteNonQuery();
        cnn.Close();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("abtus.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("developer.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("help.aspx");
    }
}
