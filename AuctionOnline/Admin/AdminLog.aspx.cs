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
namespace AuctionOnline.Admin
{
    public partial class AdminLog : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
                con.Open();
                con.Close();

            }
            catch (SqlException ff)
            {
                Label1.Text = "The Page is not in working Condition";
                con.Close();
            }

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            try
            {
                cmd = new SqlCommand("select Email,password from user1 where Email='" + Login1.UserName + "' and password='" + Login1.Password + "' and type='Admin' ", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Session["uname"] = rd["Email"].ToString();
                    Response.Redirect("AddUser.aspx");
                }

            }
            catch(Exception ff)
            {
                Label1.Text = "There is some problem in server";
                con.Close();
            }

        }
    }
}
