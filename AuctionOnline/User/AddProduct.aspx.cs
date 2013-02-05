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
    public partial class WebForm3 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;
        private string ptid;
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


                producttype();
            }
            
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string file;
            string da = Server.MapPath("").ToString();
            string ad = da.Replace("User", "");
            if (FileUpload1.HasFile)
            {
                
                FileUpload1.SaveAs(ad + "Photo/" +Session["uname"]+ FileUpload1.FileName);
                file = FileUpload1.FileName.ToString();
            }
            else
            {
                file = "";
                
            }
          
            try
            {
                ptid = getid();
             
                string uid = uname();
              
                cmd = new SqlCommand("insert into product values('" + TextBox1.Text + "'," + ptid + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','~/Photo/"+Session["uname"] + file + "',"+uid+",'" + TextBox5.Text + "','Stock','Active');", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                con.Close();
                Label2.Text = "Product Upload Successfully";
                
            }
            catch (Exception ff)
            {
                con.Close();
                Label2.Text = ff.ToString();//"There is Some Problem";
            }
        }

        protected void producttype()
        {
            cmd = new SqlCommand("select product_type from productgroup", con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                DropDownList1.Items.Add(rd["product_type"].ToString());
                
            }
            con.Close();
        }


        private string getid()
        {
            string pt_id = "";
            cmd = new SqlCommand("select pt_id from productgroup where product_type='" + DropDownList1.SelectedItem + "'", con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                pt_id = rd["pt_id"].ToString();
            }
            con.Close();
            return pt_id;
        }

        private string uname()
        {string uid="";
            try
            {
                cmd = new SqlCommand("select uid from user1 where email='"+Label1.Text+"'",con);
                con.Open();
                SqlDataReader rd=cmd.ExecuteReader();
                while(rd.Read())
                {
                    uid=rd["uid"].ToString();
                }
                con.Close();
                return uid;
            }
            catch (Exception ff)
            {
                Label2.Text="Unknown User Or Server Not Found";
                con.Close();
                return "";
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }

     


    }
}
