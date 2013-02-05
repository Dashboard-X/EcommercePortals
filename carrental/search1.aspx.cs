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


public partial class search1 : System.Web.UI.Page
{
    Boolean flag;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Label1.Visible)
        {
            Response.Redirect("search1.aspx");
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
            string query1 = "SELECT max(cno) FROM CUSTINF";
            OleDbDataAdapter da;
            da = new OleDbDataAdapter(query1, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "custinf");
            DataTable dt = new DataTable();
            dt = ds.Tables["custinf"];
            int ii;
            ii = Int16.Parse(dt.Rows[0]["max(cno)"].ToString());
            int iii;
            iii = ii + 1;
            int ac;
            int driver;
            ac = 0;
            driver = 0;
            if (CheckBox2.Checked)
                ac = 1;
            if (CheckBox3.Checked)
                driver = 1;
            query = "insert into CUSTINF values(" + iii + ",'" + TextBox9.Text + "', '" + TextBox10.Text + "', '" + TextBox11.Text + "', '" + TextBox19.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox22.Text + "','" + DropDownList11.Text + "','" + DropDownList12.Text + "', " + ac + ", " + driver + ", '" + DropDownList1.Text + "', '" + TextBox21.Text + "')";
            cmd = new OleDbCommand(query, cnn);
            cmd.ExecuteNonQuery();
            query2 = "update vehicle set available=0 where model='" + DropDownList1.Text + "'";
            cmd2 = new OleDbCommand(query2, cnn);
            cmd2.ExecuteNonQuery();
            cnn.Close();
            Label2.Visible = true;
            Label3.Visible = true;
            Label3.Text = iii.ToString();
            Button1.Visible = true;
            LinkButton1.Visible = false;


        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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
            Label5.Visible = true;
        }

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
        Label5.Visible = false;

    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MODELS.aspx");
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
            TextBox22.Text = " ";
            TextBox3.Text = " ";
            Label5.Visible = true;
            Calendar2.Visible = true;
        }
         if(ts2 == 0)
        {
            TextBox22.Text = "1";
            TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
            Label5.Visible = false;
            Calendar2.Visible = false;

        }
        if(ts2>=1)
        {
            ts2 = ts2 + 1;
            TextBox22.Text = ts2.ToString();
            TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            Label5.Visible = false;
           
        }

    }


    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
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

            TextBox21.Text = dr["rate"].ToString();
        }
        cnn.Close();
    }

    protected void LinkButton2_Click1(object sender, EventArgs e)
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
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("security.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("security.aspx");
    }

    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
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
            TextBox2.Text = "";
            Calendar1.Visible = true;
            Calendar2.Visible = false;


        }
    }
   /* protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

        DateTime a1;
        a1 = Calendar1.SelectedDate;
        if (Convert.ToDateTime(args.Value) >= a1)
        {
            args.IsValid = true;
            TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            flag1 = true;
           
        }
        else
        {
            args.IsValid = false;
            TextBox3.Text = "";
            Calendar2.Visible = true;
            
        }
    }*/
  /* protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (flag1)
        {
            Calendar2.Visible = false;
            Label5.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
            TextBox3.Text = "";
            Label5.Visible = true;
        }
    }*/

  
}
