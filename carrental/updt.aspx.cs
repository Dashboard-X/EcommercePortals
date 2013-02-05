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

public partial class updt : System.Web.UI.Page
{
    Boolean flag;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        OleDbConnection cnn = new OleDbConnection("provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True");
         string query = "select model from custinf where cno=" + TextBox16.Text + "";
         OleDbDataAdapter da;
            da = new OleDbDataAdapter(query, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "custinf");
            DataTable dt = new DataTable();
            dt = ds.Tables["custinf"];
            String model1 = dt.Rows[0]["model"].ToString();
         string query3 = "update vehicle set available=1 where model='" + model1 + "'";
         cnn.Open();
         OleDbCommand cmd = new OleDbCommand(query3, cnn);
         cmd.ExecuteNonQuery();
         cnn.Close();
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox13.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (flag)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = true;
        }
        else
        {
            Calendar1.Visible = true;
            TextBox2.Text = "";
            Label3.Visible = true;
        }
      
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TimeSpan ts;
        DateTime a, b;
        a = Calendar1.SelectedDate;
        b = Calendar2.SelectedDate;
        ts = b - a;
        string str1 = ts.ToString();
        int l1 = str1.Length;
        if (l1 == 10)
        {
            str1 = str1.Remove(1);
        }
        else
        {
            str1 = str1.Remove(2);
        }
        int ts2 = Int16.Parse(str1);
        if (ts2 < 0)
        {
            TextBox2.Text = " ";
            TextBox14.Text = " ";
            Label3.Visible = true;
            Calendar2.Visible = true;
        }
        if (ts2 == 0)
        {
            TextBox2.Text = "1";
            TextBox14.Text = Calendar2.SelectedDate.ToShortDateString();
            Label3.Visible = false;
            Calendar2.Visible = false;

        }
        if (ts2 >= 1)
        {
            ts2 = ts2 + 1;
            TextBox2.Text = ts2.ToString();
            TextBox14.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            Label3.Visible = false;

        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        OleDbConnection cnn = new OleDbConnection("provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True");
        string query = "select * from rent where model='" + DropDownList1.Text + "'";
        string query1 = "select * from vehicle where model='" + DropDownList1.Text + "' and available=1";
        cnn.Open();
        OleDbCommand cmd = new OleDbCommand(query1, cnn);
        OleDbCommand comm = new OleDbCommand(query, cnn);
        OleDbDataReader dr;
        OleDbDataReader dr1;
        dr1 = cmd.ExecuteReader();
        if (!(dr1.Read()))
        {
            Label1.Visible = true;
        }
        else
        { Label1.Visible = false; }
        dr = comm.ExecuteReader();
        if (dr.Read())
        {
            TextBox11.Text = dr["rate"].ToString();
        }
        cnn.Close();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Label1.Visible)
        {
            Response.Redirect("updt.aspx");
        }
        else
        {
            OleDbConnection cnn = new OleDbConnection();
            cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
            cnn.Open();
            OleDbCommand cmd, cmd1, cmd2;
            string query, query2;
            cmd1 = new OleDbCommand();
            cmd1.Connection = cnn;
            int ac;
            int driver;
            ac = 0;
            driver = 0;
            if (CheckBox1.Checked)
                ac = 1;
            if (CheckBox2.Checked)
                driver = 1;
            
            query = "update custinf set pud='" + TextBox13.Text + "', dod='" + TextBox14.Text + "', nod='" + TextBox2.Text + "', pic='" + DropDownList2.Text + "', doc='" + DropDownList3.Text + "', ac=" + ac + ", driver=" + driver + ", model='" + DropDownList1.Text + "',rate='" + TextBox11.Text + "' where cno=" + Int16.Parse(TextBox16.Text) + ""; 
            cmd = new OleDbCommand(query, cnn);
            cmd.ExecuteNonQuery();
            query2 = "update vehicle set available=0 where model='" + DropDownList1.Text + "'";
            cmd2 = new OleDbCommand(query2, cnn);
            cmd2.ExecuteNonQuery();
            Label2.Visible = true;
            cnn.Close();


    }}

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("abtus.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("developer.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("help.aspx");
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        DateTime a;
        a = Calendar1.TodaysDate;
        if (Convert.ToDateTime(args.Value) >= a)
        {
            args.IsValid = true;
            flag = true;
        }
        else
        {
            args.IsValid = false;
            TextBox13.Text = "";
            Calendar1.Visible = true;
            Calendar2.Visible = false;


        }
    }
}
