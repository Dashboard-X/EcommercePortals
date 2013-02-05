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
    public partial class WebForm14 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = Session["uname"].ToString();
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
                con.Open();
                con.Close();
                load();
              

            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("update user1 set ques='" + TextBox6.Text + "' , ans='" + TextBox7.Text + "' where Email='" + Session["uname"] + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label2.Text = "Update Successfully";
            }
            catch (Exception ff)
            {
                Label2.Text = "There is Some Problem";
                con.Close();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("update user1 set password='" + TextBox4.Text + "'where Email='" + Session["uname"] + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label3.Text = "Update Successfully";

            }
            catch (Exception ff)
            {
                Label3.Text = "There is Some Problem";
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("update user1 set Uname='" + TextBox2.Text + "'where Email='" + Session["uname"] + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label4.Text = "Update Successfully";

            }
            catch (Exception ff)
            {
                Label4.Text = "There is Some Problem";
                con.Close();
            }
        }

        private void load()
        {
            try
            {
                cmd = new SqlCommand("select Uname,password from user1 where email='" + Session["uname"] + "'", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    TextBox1.Text = rd["Uname"].ToString();
                    TextBox3.Text = rd["password"].ToString();
                }
                con.Close();
            }
            catch (Exception ff)
            {

            }
        }


    }
}
