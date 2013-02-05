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

public partial class custdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

       /* OleDbConnection cnn = new OleDbConnection();
        cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
        cnn.Open();
        OleDbCommand cmd;
        string query;
        cmd = new OleDbCommand();
        cmd.Connection = cnn;
        string query = SELECT * FROM CUSTINFO WHERE CNO=
        OleDbDataAdapter da;
        da = new OleDbDataAdapter(query, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "custinfo");
        DataTable dt = new DataTable();
        dt = ds.Tables["custinfo"];
        cnn.Close();*/
        }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
