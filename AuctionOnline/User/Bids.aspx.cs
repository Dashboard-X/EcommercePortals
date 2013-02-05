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
    public partial class WebForm5 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlDataAdapter adp;
        private DataSet set;
        public string id;
        
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
                set = new DataSet();
                uid();
                if (!IsPostBack)
                {

                    FillGrid();
                    FillGrid1();
                }
            } 
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }

        protected void FillGrid()
        {           
            SqlCommand cmd = new SqlCommand("select bid_id,replace(CONVERT(VARCHAR(10),bdate, 111),'/','-')as bDate ,p_name,bprice from bid join product on product.p_id=bid.p_id where status='Stock' and bid.uid="+id+"", con);
            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillGrid();
           
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = GridView1.EditIndex;
            GridViewRow row = GridView1.Rows[index];
            int bid_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string Date = ((TextBox)row.Cells[2].Controls[0]).Text.ToString().Trim();
            string p_name = ((TextBox)row.Cells[3].Controls[0]).Text.ToString().Trim();
            string bprice = ((TextBox)row.Cells[4].Controls[0]).Text.ToString().Trim();





            string sql = "UPDATE Bid  SET bDate='" + Date + "',Bprice="+bprice+" WHERE bid_id=" + bid_id + "";


            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int temp = cmd.ExecuteNonQuery();
            con.Close();
            if (temp == 1)
            {

                Label2.Text = "Record updated successfully";
            }
            GridView1.EditIndex = -1;
            FillGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Eid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("DELETE FROM bid WHERE bid_id=" + Eid + "", con);
            con.Open();
            int temp = cmd.ExecuteNonQuery();
            if (temp == 1)
            {
               // Label2.Text = "Record deleted successfully";
            }
            con.Close();
            FillGrid();
        }

        private void uid()
        {
            id = "";
            SqlCommand cmd2  = new SqlCommand("select uid from user1 where email='"+Session["uname"]+"'",con);
            con.Open();
            SqlDataReader rd = cmd2.ExecuteReader();
            while (rd.Read())
            {id=rd["uid"].ToString();
            }


            con.Close();
        }

     




        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            FillGrid1();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = GridView2.EditIndex;
            GridViewRow row = GridView2.Rows[index];
            int bid_id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            string Date = ((TextBox)row.Cells[2].Controls[0]).Text.ToString().Trim();
            string p_name = ((TextBox)row.Cells[3].Controls[0]).Text.ToString().Trim();
            string bprice = ((TextBox)row.Cells[4].Controls[0]).Text.ToString().Trim();





            string sql = "UPDATE Bid  SET bDate='" + Date + "',Bprice=" + bprice + " WHERE bid_id=" + bid_id + "";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int temp = cmd.ExecuteNonQuery();
            con.Close();
            if (temp == 1)
            {

                Label3.Text = "Record updated successfully";
            }
            GridView2.EditIndex = -1;
            FillGrid1();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Eid = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("DELETE FROM bid WHERE bid_id=" + Eid + "", con);
            con.Open();
            int temp = cmd.ExecuteNonQuery();
            if (temp == 1)
            {
                Label3.Text = "Record deleted successfully";
            }
            con.Close();
            FillGrid1();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            FillGrid1();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);  
        }



        protected void FillGrid1()
        {
            
            SqlCommand cmd1 = new SqlCommand("select bid_id,replace(CONVERT(VARCHAR(10),bdate, 111),'/','-')as bDate ,p_name,bprice from bid join product on product.p_id=bid.p_id where status='Not Avail' and bid.uid=" + id + "", con);
            con.Open();
            GridView2.DataSource = cmd1.ExecuteReader();
            GridView2.DataBind();
            con.Close();

        }
    
    
    }



}
