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
    public partial class WebForm16 : System.Web.UI.Page
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
                               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("insert into feed values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now.Date.ToShortDateString() + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label2.Text = "Message Upload Successfully";

            }
            catch (Exception ff)
            {
                Label2.Text = "There is Some Problem";
                con.Close();
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }

     
    }
}
