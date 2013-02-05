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

public partial class custpayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label3.Visible = true;
        int ac, driver,nod1,rate;
        string nod,ac1,driver1,pud,dod;
        Double ttl=0,tax;
        pud=GridView1.SelectedRow.Cells[1].Text;
        dod=GridView1.SelectedRow.Cells[2].Text;
        nod = GridView1.SelectedRow.Cells[3].Text;
        rate =Int16.Parse(GridView1.SelectedRow.Cells[6].Text);
        ac1 = GridView1.SelectedRow.Cells[4].Text;
        driver1 =GridView1.SelectedRow.Cells[5].Text;
        nod1 = Convert.ToInt16(nod);
        ac = Int16.Parse(ac1);
        driver = Int16.Parse(driver1);
        if (ac != 0)
            ttl = ttl + 500;
        if (driver != 0)
            ttl = ttl + 500;
        ttl = ttl + (nod1 * rate);
        tax = (ttl * 12.54)/100;
        ttl = ttl + tax;
        Label2.Text = ttl.ToString();
        OleDbConnection cnn = new OleDbConnection();
        cnn.ConnectionString = "provider=msdaora.1; Data Source=shikha; User ID=scott; Password=tiger;Unicode=True";
        cnn.Open();
        OleDbCommand cmd,cmd2,cmd3,cmd4;
        string query,query2,query3,query4;
        cmd = new OleDbCommand();
        cmd2 = new OleDbCommand();
        cmd3 = new OleDbCommand();
        cmd4 = new OleDbCommand();
        cmd.Connection = cnn;
        cmd2.Connection = cnn;
        cmd3.Connection = cnn;
        cmd4.Connection = cnn;
        query = "insert into billing values(" + Int16.Parse(TextBox2.Text) + ",'" + pud + "', '" + dod + "', '" + nod1 + "', " + ac + ", " + driver + ",'" + rate.ToString() + "','" + Label2.Text + "')";
        cmd = new OleDbCommand(query, cnn);
        cmd.ExecuteNonQuery();
        query2 = "select model from custinf where cno='" + TextBox2.Text + "'";
        cmd2 = new OleDbCommand(query2, cnn);
        OleDbDataReader dr2;
        dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            TextBox3.Text = dr2["model"].ToString();
                
        }
        query3 = "update vehicle set available=1 where model='" + TextBox3.Text + "'";
        cmd3 = new OleDbCommand(query3, cnn);
        cmd3.ExecuteNonQuery();
        query4 ="delete from CUSTINF where cno=" + Int16.Parse(TextBox2.Text) + "";
        cmd4 = new OleDbCommand(query4, cnn);
        cmd4.ExecuteNonQuery();
       cnn.Close();

         
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
