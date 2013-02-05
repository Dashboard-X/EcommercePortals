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

namespace AuctionOnline.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
            producttype();
            Label1.Text = Session["uname"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string file;
            string da = Server.MapPath("").ToString();
            string ad = da.Replace("Admin","");
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(ad + "Photo/" + FileUpload1.FileName);
                file = FileUpload1.FileName.ToString();
            }
            else
            {
                file = "";    
            }
            string ptid = getid(DropDownList1.SelectedItem.ToString());
            try
            {
                cmd = new SqlCommand("insert into product values('" + TextBox1.Text + "'," + ptid+ ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','~/Photo/" + file + "',1,'" + TextBox5.Text + "','Stock','Active')", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                con.Close();
            
            }
            catch (Exception ff)
            {
                con.Close();
            }
        }

        protected void producttype()
        {
            cmd = new SqlCommand("select product_type from productgroup",con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                DropDownList1.Items.Add(rd["product_type"].ToString());
            }
            con.Close();
        }


        private string getid(string id)
        {
            string pt_id = "";
            cmd = new SqlCommand("select pt_id from productgroup where product_type='"+id+"'",con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
               pt_id= rd["pt_id"].ToString();
            }
            con.Close();
            return pt_id;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiView1.ActiveViewIndex = Convert.ToInt32(e.Item.Value);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }

    }
}
