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
    public partial class WebForm2 : System.Web.UI.Page
    {
        private SqlCommand cmd;
        private SqlConnection con;
        private SqlDataAdapter adp;
        private DataSet set;
        private string pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            set = new DataSet();
            Label1.Text = Session["uname"].ToString();
            pid = Session["p_id"].ToString();
            Label2.Text = pid;
           Image1.ImageUrl=Session["pic"].ToString();
           con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
            info();
            info2();       
            topten();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }


        protected void info()
        {
            try
            {
                cmd = new SqlCommand("select product.P_name,product_type,email from product join productgroup on productgroup.pt_id=product.pt_id join user1 on product.uid=user1.uid  where product.p_id=" + pid + "", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Label3.Text = rd["p_name"].ToString();
                    Label4.Text = rd["product_type"].ToString();
                    Label7.Text = rd["email"].ToString();
                }


                con.Close();
                
                
            }
            catch (Exception ff)
            {
                con.Close();
            }
        }
        protected void info2()
        {
            try
            {
                cmd = new SqlCommand("select uname, bprice from bid join user1 on bid.uid=user1.uid  where bprice = (select max(bprice)as max from bid where p_id="+pid+")", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Label5.Text = rd["uname"].ToString();
                    Label6.Text = rd["bprice"].ToString();
                    

                }
                con.Close();
                
            }
            catch (Exception ff)
            {
                con.Close();
                Label8.Text = "Problem in info2";
            }
        }
        protected void topten()
        {
            set.Clear();
            
            adp = new SqlDataAdapter("select top(10)* from bid where p_id="+pid, con);
            adp.Fill(set);
            GridView1.DataSource = set.Tables[0];
            GridView1.DataBind();
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string id = getuid();
                if (id.Equals(""))
                {
                 }
                else
                {
                    string dat = DateTime.Now.Date.ToShortDateString();
                    cmd = new SqlCommand("insert into bid values('" + dat + "'," + Label2.Text + "," + id + "," + TextBox1.Text + ")", con);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    con.Close();
                    Label8.Text = "DataBase Update";
                    topten();
                    info2();
                }
            }
            catch (Exception ff)
            {
                con.Close();
                Label8.Text = "There is some Problem";

            }



        }
        protected string getuid()
        {
            string uid="";
            try
            {
                cmd = new SqlCommand("select uid from user1 where email='" + Session["uname"].ToString() + "'", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    uid = rd["uid"].ToString();
                }
                con.Close();
                return uid;
            }
            catch (Exception ff)
            {
                con.Close();
                Label8.Text = "there is no id";
                return "";
            }


        }
       
    }
}
