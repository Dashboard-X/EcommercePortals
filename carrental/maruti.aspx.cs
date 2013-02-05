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

public partial class maruti : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
     
        

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("security.aspx");
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("security.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("security.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        /*OleDbConnection cnn = new OleDbConnection();
        cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
        cnn.Open();
        //OleDbCommand cmd;
        string query; 
        query = "UPDATE VEHICLE SET AVAILABLE=0 WHERE MODEL=800";
        OleDbCommand cmd=new OleDbCommand(query,cnn);
        cmd.ExecuteNonQuery();
        cnn.Close();*/
        Response.Redirect("security.aspx");
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MODELS.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("tata.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("search1.aspx");
    }
}
