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
using System.Windows.Forms;
namespace CopmuterOnLine
{
    public partial class AdminProduct : System.Web.UI.Page
    {
        //Global varable for ItemField for Gridview
        int snoCntr = 0;
        //byte[] imgBin;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Method are being loaded before changing and after changing
            if (!IsPostBack)
            {
                bindGridViewPaging();
            }
            if (Page.IsPostBack == false)
            {
                ViewState["direc"] = "asc";
                bindGridView();
            }

        }

        protected void gvSearchResults_PageIndexChanging(object sender, GridViewPageEventArgs e) //Assign page indexing to Gridveiw
        {
            //Assign paging / indexing of grid view
            gvSearchResults.PageIndex = e.NewPageIndex;
            bindGridViewPaging();
        }

        public void bindGridViewPaging() //Method for paging data in Gridview (counter)
        {
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString(); ;
            SqlConnection conn = new SqlConnection(sConn);

            if (conn.State == ConnectionState.Broken)
            {
                conn.Open();
            }
            //Create new sql command object with sql text
            SqlCommand cmd = new SqlCommand("SELECT  ProductID, ProductName, Description, PriceExSaleTax from Products", conn);
            //New sql data adapter object
            SqlDataAdapter sqlDA = new SqlDataAdapter(cmd);
            //New data set 
            DataSet ds = new DataSet();
            //Data set filled with data adapter result
            sqlDA.Fill(ds);
            //Data set assigned to grid view
            gvSearchResults.DataSource = ds;
            gvSearchResults.DataBind();
            //Connection closed
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public void bindGridView() //Data bind  Gridview
        {
            //Make a connection string using web config
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            //Make a new instance of sql connection
            SqlConnection conn = new SqlConnection(sConn);
            //Condition Check for connection state
            if (conn.State == ConnectionState.Broken)
            {
                conn.Open();
            }
            //Sql command text 
            SqlCommand cmd = new SqlCommand("Select * from Products", conn);
            //Sql data adapter fill the data set
            SqlDataAdapter sqlDA = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sqlDA.Fill(ds);

            //Make a new data view instance for sorting, filltering and binding data
            DataView dv = new DataView();
            dv = ds.Tables[0].DefaultView;
            //Condition check for view state than occured the below event
            if (ViewState["Sort"] != null)
            {
                dv.Sort = ViewState["Sort"].ToString() + " " + ViewState["direc"].ToString();
            }
            //Otherwise occure this
            else
            {
                dv.Sort = "ProductID asc";
            }

            //Binding data for grid view
            gvSearchResults.DataSource = dv;

            //Data base connection closed
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e) //Searching of Data from database
        {
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(sConn);
            conn.Open();
            //Used store procedure for searching of data from database
            SqlDataAdapter daCustomers = new SqlDataAdapter("spSearchProducts", conn);
            daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
            //Passing value into parameters through textboxes
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@ProductName", txtNameSearch.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Description", txtDescSearch.Text));


            DataSet dsCustomers = new DataSet();
            daCustomers.Fill(dsCustomers);

            gvSearchResults.DataSource = dsCustomers;
            gvSearchResults.DataBind();
        }

        protected void gvSearchResults_RowCommand(object sender, GridViewCommandEventArgs e) //select data from grid view for next panel
        {
            //Condition check for selection of data from gridview
            if (e.CommandName == "Select")
            {
                gvSearchResults.SelectedIndex = Convert.ToInt16(e.CommandArgument.ToString());
                LoadCustomer(gvSearchResults.SelectedDataKey.Value.ToString());
            }
        }

        protected void gvSearchResults_RowDataBound(object sender, GridViewRowEventArgs e) // Showed total number of record in gridview footer
        {
            //Method used for row counting / total number of records in grid view
            switch (e.Row.RowType)
            {
                case DataControlRowType.DataRow:
                    snoCntr += 1;
                    break;
                case DataControlRowType.Footer:
                    e.Row.Cells[1].Text = "Total number of records:" + snoCntr.ToString();
                    break;
            }
        }

        private void LoadCustomer(string sProductID) //Load data from gridview to next panel
        {

            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(sConn);
            conn.Open();
            //New sql adapter used for store procedure
            SqlDataAdapter daCustomers = new SqlDataAdapter("spGetProducts", conn);
            daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;

            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@ProductID", sProductID));
            DataSet dsCustomers = new DataSet();
            daCustomers.Fill(dsCustomers);

            FillFields(dsCustomers);

            conn.Close();
        }

        private void FillFields(DataSet ds) // Method used to fill textboxes through database
        {
            ClearFields();

            txtDesc.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            txtName.Text = ds.Tables[0].Rows[0]["ProductName"].ToString();
            txtPriceExSaleTax.Text = ds.Tables[0].Rows[0]["PriceExSaleTax"].ToString();
            txtSaleTaxPercent.Text = ds.Tables[0].Rows[0]["SaleTaxPercent"].ToString();
            
        }

        private void ClearFields() //Initialized all textboxes
        {
            txtDesc.Text = "";
            txtName.Text = "";
            txtPriceExSaleTax.Text = "";
            txtSaleTaxPercent.Text = "";

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //if (fupImage.PostedFile != null && !string.IsNullOrEmpty(fupImage.PostedFile.FileName) && CustomValidator1.IsValid)
            //{
            //    //create a byte array to store the binary image data
            //    imgBin = new byte[fupImage.PostedFile.ContentLength];
            //    //store the currently selected file in memeory
            //    HttpPostedFile img = fupImage.PostedFile;
            //    //set the binary data
            //    img.InputStream.Read(imgBin, 0, (int)fupImage.PostedFile.ContentLength);

                string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                SqlConnection conn = new SqlConnection(sConn);
                conn.Open();
                //New sql adapter used for store procedure to add new records
                SqlDataAdapter daCustomers = new SqlDataAdapter("spAddProducts", conn);
                daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
                //Store data into tables throgh parameters from textboxes
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@ProductName", txtName.Text));
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Description", txtDesc.Text));
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@SaleTaxPercent", txtSaleTaxPercent.Text));
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@PriceExSaleTax", txtPriceExSaleTax.Text));
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@imageURL", txtImage.Text));
                //daCustomers.SelectCommand.Parameters.Add("@imageURL", SqlDbType.Image, imgBin.Length).Value = imgBin;

                DataSet dsCustomers = new DataSet();
                daCustomers.Fill(dsCustomers);
                gvSearchResults.DataSource = dsCustomers;
                MessageBox.Show("Record added successfully");
                ClearFields();
                conn.Close();
            }
            //else { }
       
        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            //Called clear and disable fields methods
            ClearFields();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(sConn);
            conn.Open();
            //Create new object of sql data adapter with store procedure(for update records in database)
            SqlDataAdapter daCustomers = new SqlDataAdapter("spUpdateProduct", conn);
            daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
            //Store data into tables throgh parameters from textboxes
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@ProductID", gvSearchResults.SelectedValue));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@ProductName", txtName.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Description", txtDesc.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@SaleTaxPercent", txtSaleTaxPercent.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@PriceExSaleTax", txtPriceExSaleTax.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@imageURL", txtImage.Text));
            //daCustomers.SelectCommand.Parameters.Add("@imageURL", SqlDbType.Image, imgBin.Length).Value = imgBin;

            DataSet dsCustomers = new DataSet();
            daCustomers.Fill(dsCustomers);
            //Changes will be occured in grid view right away
            gvSearchResults.DataSource = dsCustomers;
            MessageBox.Show("Record updated successfully");
            ClearFields();
            conn.Close();

        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            //Used dialog box to make sure you want to delete records or not, because its very sensitive
            DialogResult ret;
            ret = MessageBox.Show("Are you sure to delete record!", "Delete".ToUpper(), MessageBoxButtons.YesNo, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1);
            //Condition check if yes, then perform below function
            if (ret == DialogResult.Yes)
            {
                string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                SqlConnection conn = new SqlConnection(sConn);
                conn.Open();
                //Create sql data adapter for store procedure (Delete specific record from database)
                SqlDataAdapter daCustomers = new SqlDataAdapter("spDeleteProducts", conn);
                daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
                //Get ClientID key from gridview 
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@ProductID", gvSearchResults.SelectedValue));

                DataSet dsCustomers = new DataSet();
                daCustomers.Fill(dsCustomers);

                gvSearchResults.DataSource = dsCustomers;
                //Confirmation of deleted recoreds
                MessageBox.Show("Record Deleted Successfully");
                ClearFields();
                conn.Close();
            }
            //if data key not matched with the database than
            else
            {
                MessageBox.Show("Record Not Deleted");
            }
        }

        protected void gvSearchResults_Sorting(object sender, GridViewSortEventArgs e) // Method for sorting gridview column by column
        {
            //View state used for sorting data in grid view
            ViewState["Sort"] = e.SortExpression;
            //Condtion check for asc order
            if (ViewState["direc"].ToString() == "asc")
            {
                ViewState["direc"] = "desc";
            }
            else
            {
                ViewState["direc"] = "asc";
            }
            bindGridView();
        }

        
    }
}
