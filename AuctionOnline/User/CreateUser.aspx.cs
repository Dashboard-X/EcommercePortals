using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace AuctionOnline.User
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private DataSet set;
        private SqlDataAdapter adp;
        private string cid;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
            set = new DataSet();
            country();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                getcid();
                
                cmd = new SqlCommand("insert into user1(uname,email,password,DOB,Cid,mobile,ques,Ans,Active,type)values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox5.Text+"',"+cid+",'"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"','Active','USER')", con);
                con.Open();
                Session["uname"] = TextBox2.Text;
                SqlDataReader rd = cmd.ExecuteReader();
                con.Close();
                
                // Label1.Text = "DataBase Update";
                TextBox1.Text = ""; TextBox2.Text = ""; TextBox3.Text = ""; TextBox4.Text = "";
                TextBox5.Text = ""; TextBox6.Text = ""; TextBox7.Text = ""; TextBox8.Text = "";
                log();
            }
            catch (Exception ff)
            {
                Label1.Text = "There is Some problem";
                con.Close();
            }
        }

        protected void country()
        {
            cmd = new SqlCommand("select Cname from country", con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                DropDownList1.Items.Add(rd["Cname"].ToString());
            }
            con.Close();
        }

        protected void getcid()
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("select cid from Country where cname='" + DropDownList1.SelectedItem + "'", con);
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    cid = rd["cid"].ToString();
                }

                con.Close();

            }
            catch (Exception ff)
            {
                Label1.Text = "There is Some problem";
                con.Close();
            }

         }


        private void log()
        {
            try
            {
                
                Response.Redirect("Status.aspx");

            }
            catch (Exception ff)
            {

            }

        }

    }
}
