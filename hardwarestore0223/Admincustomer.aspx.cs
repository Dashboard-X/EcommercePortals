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
    public partial class Admincustomer : System.Web.UI.Page
    {
        //Global varable for ItemField for Gridview
        int snoCntr = 0;
        byte[] imgBin;

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
            SqlCommand cmd = new SqlCommand("SELECT  Username, CustomerID from Customers", conn);
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
            SqlCommand cmd = new SqlCommand("Select * from Customers", conn);
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
                dv.Sort = "CustomerID asc";
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
            SqlDataAdapter daCustomers = new SqlDataAdapter("spSearchCustomers", conn);
            daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
            //Passing value into parameters through textboxes
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@userName", txtUserSearch.Text));
            

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

        private void LoadCustomer(string sClientID) //Load data from gridview to next panel
        {

            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(sConn);
            conn.Open();
            //New sql adapter used for store procedure
            SqlDataAdapter daCustomers = new SqlDataAdapter("spGetCustomer", conn);
            daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;

            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@CustomerID", sClientID));
            DataSet dsCustomers = new DataSet();
            daCustomers.Fill(dsCustomers);

            FillFields(dsCustomers);

            conn.Close();
        }

        private void DisableFields() // Method to disable all textboxes
        {
            txtUser.Enabled = false;
            txtPwd.Enabled = false;
            txtOrg.Enabled = false;
            txtAddr.Enabled = false;
            txtAttention.Enabled = false;
            txtCity.Enabled = false;
            txtComp.Enabled = false;
            txtContact.Enabled = false;
            txtCountry.Enabled = false;
            txtPostal.Enabled = false;
        }

        private void Enablefields() // Method used for enabled all textboxes
        {
            txtUser.Enabled = true;
            txtPwd.Enabled = true;
            txtOrg.Enabled = true;
            txtAddr.Enabled = true;
            txtAttention.Enabled = true;
            txtCity.Enabled = true;
            txtComp.Enabled = true;
            txtContact.Enabled = true;
            txtCountry.Enabled = true;
            txtPostal.Enabled = true;
        }

        private void FillFields(DataSet ds) // Method used to fill textboxes through database
        {
            ClearFields();

            txtAddr.Text = ds.Tables[0].Rows[0]["Adress"].ToString();
            txtAttention.Text = ds.Tables[0].Rows[0]["Attention"].ToString();
            txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
            txtComp.Text = ds.Tables[0].Rows[0]["Company"].ToString();
            txtContact.Text = ds.Tables[0].Rows[0]["Contact"].ToString();
            txtCountry.Text = ds.Tables[0].Rows[0]["Country"].ToString();
            txtOrg.Text = ds.Tables[0].Rows[0]["OrgNumber"].ToString();
            txtPostal.Text = ds.Tables[0].Rows[0]["PostalCode"].ToString();
            txtPwd.Text = ds.Tables[0].Rows[0]["Password"].ToString();
            txtUser.Text = ds.Tables[0].Rows[0]["Username"].ToString();
        }

        private void ClearFields() //Initialized all textboxes
        {
            txtAddr.Text = "";
            txtAttention.Text = "";
            txtCity.Text = "";
            txtComp.Text = "";
            txtContact.Text = "";
            txtOrg.Text = "";
            txtPostal.Text = "";
            txtPwd.Text = "";
            txtUser.Text = "";
            txtCountry.Text = "";
        }

        protected void btnAddNew_Click(object sender, EventArgs e) //button for create new records
        {
            //Called clear and disable fields methods
            ClearFields();
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminProduct.aspx");
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string sConn = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection conn = new SqlConnection(sConn);
            conn.Open();
            //Create new object of sql data adapter with store procedure(for update records in database)
            SqlDataAdapter daCustomers = new SqlDataAdapter("spUpdateCustomer", conn);
            daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
            //After necessary updation data will be stored into table through parameter passing from textboxes
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@CustomerID", gvSearchResults.SelectedValue));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Username", txtUser.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Password", txtPwd.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Company", txtComp.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@OrgNumber", txtOrg.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Contact", txtContact.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Attention", txtAttention.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Adress", txtAddr.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@PostalCode", txtPostal.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@City", txtCity.Text));
            daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@Country", txtCountry.Text));

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
                SqlDataAdapter daCustomers = new SqlDataAdapter("spDeleteCustomer", conn);
                daCustomers.SelectCommand.CommandType = CommandType.StoredProcedure;
                //Get ClientID key from gridview 
                daCustomers.SelectCommand.Parameters.Add(new SqlParameter("@CustomerID", gvSearchResults.SelectedValue));

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

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args) //Method used for select image from file with validation check
        {
            //create an array of valid file extensions
            string[] validExt = { "jpg", "jpeg", "png", "gif", "bmp" };

            //set args to invalid
            args.IsValid = false;

            //get file name
            string fileName = fupImage.PostedFile.FileName;

            //check to make sure the string is not empty
            if (!string.IsNullOrEmpty(fileName))
            {
                //get file extension
                string fileExt = fileName.Substring(fileName.LastIndexOf('.') + 1).ToLower();
                //check if current extensions matches any valid extensions
                for (int i = 0; i < validExt.Length; i++)
                {
                    if (fileExt == validExt[i]) //if we find a match
                        args.IsValid = true;    //validate it
                }
            }
        }
    }
}