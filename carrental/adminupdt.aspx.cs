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

public partial class adminupdt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection cnn = new OleDbConnection();
        cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
        cnn.Open();
        OleDbCommand cmd,cmd1;
        string query,query1;
        cmd = new OleDbCommand();
        cmd.Connection = cnn;
        cmd1 = new OleDbCommand();
        cmd1.Connection = cnn;
        query = "SELECT max(sno) FROM CITY";
        OleDbDataAdapter da;
        da = new OleDbDataAdapter(query, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "city");
        DataTable dt = new DataTable();
        dt = ds.Tables["city"];
        int ii;
        ii = Int16.Parse(dt.Rows[0]["max(sno)"].ToString());
        int iii;
        iii = ii + 1;
        query1="insert into city values(" + iii + ",'" + TextBox1.Text + "')";
        cmd1 = new OleDbCommand(query1, cnn);
        cmd1.ExecuteNonQuery();
        cnn.Close();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection cnn = new OleDbConnection();
        cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
        cnn.Open();
        OleDbCommand cmd, cmd1;
        string query, query1;
        cmd = new OleDbCommand();
        cmd.Connection = cnn;
        cmd1 = new OleDbCommand();
        cmd1.Connection = cnn;
        query = "insert into rent values('" + TextBox3.Text + "','" + TextBox5.Text + "')";
        cmd = new OleDbCommand(query, cnn);
        cmd.ExecuteNonQuery();
        query1 = "insert into vehicle values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')";
        cmd1 = new OleDbCommand(query1, cnn);
        cmd1.ExecuteNonQuery();
        cnn.Close();
    }
}
