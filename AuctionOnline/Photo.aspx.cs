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

namespace AuctionOnline
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        private SqlCommand cmd;
        private SqlConnection con;
        private SqlDataAdapter adp;
        private DataSet set;
        private string pid;
        protected void Page_Load(object sender, EventArgs e)
        {
            set = new DataSet();
            pid = Session["p_id"].ToString();
            Label1.Text = pid;
            Image1.ImageUrl = Session["pic"].ToString();
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
            info();
            info2();
            topten();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("User/Login.aspx");
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
                    Label2.Text = rd["p_name"].ToString();
                    Label3.Text = rd["product_type"].ToString();
                    Label6.Text = rd["email"].ToString();
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
                cmd = new SqlCommand("select uname, bprice from bid join user1 on bid.uid=user1.uid  where bprice = (select max(bprice)as max from bid where p_id=" + pid + ")", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Label4.Text = rd["uname"].ToString();
                    Label5.Text = rd["bprice"].ToString();


                }
                con.Close();

            }
            catch (Exception ff)
            {
                con.Close();
                Label7.Text = "Problem in info2";
            }
        }
        protected void topten()
        {
            set.Clear();

            adp = new SqlDataAdapter("select top(10)* from bid where p_id=" + pid, con);
            adp.Fill(set);
            GridView1.DataSource = set.Tables[0];
            GridView1.DataBind();
            

        }


    }
}
