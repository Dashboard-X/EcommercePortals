using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace AuctionOnline.User
{
    public partial class Login : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private string uid;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
            uid = "";
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {
                cmd = new SqlCommand("select Email,password from user1 where Email='" + Login1.UserName + "' and password='" + Login1.Password + "'", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                
                while (rd.Read())
                {
                    Session["uname"] = rd["Email"].ToString();

                   
                                
                }
                con.Close();
                if (Session == null)
                {
                }
                else
                {
                    updatepage();
                   Response.Redirect("Status.aspx");
                }
            }
            catch (Exception ff)
            {
            //    Label1.Text = "There is some problem in server";
                con.Close();
            }


        }

        protected void updatepage()
        {

            try
            {
                getuid();
                string date = DateTime.Now.Date.ToShortDateString();
                cmd = new SqlCommand("insert into vistor values("+uid+",'"+date+"')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ff)
            {
                con.Close();
                Label1.Text = "Problem in update";
            }

        }

        protected void getuid()
        {
            try
            {
                cmd = new SqlCommand("select uid from user1 where email='"+Session["uname"]+"'",con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    uid = rd["uid"].ToString();
                }
                con.Close();

            }
            catch (Exception ff)
            {
                con.Close();
                Label1.Text = "Problem in user id";
            }


        }

    }
}
