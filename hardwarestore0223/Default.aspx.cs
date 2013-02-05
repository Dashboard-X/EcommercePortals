using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace CopmuterOnLine
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, System.EventArgs e)
        {

            // We check to see that this page loads without any postback on the page because it is unnessary to
            // to run this code if there only is a postback on the page like a click on a button.
            if (!Page.IsPostBack)
            {
                // We select all products from the "Products" table and sort the list by "ProductName" in ascending order. 
                // The data for the products are supplied to the "ProductListRepeater" repeater control and we split up the
                // product list in pages with next and previous links for navigation.

                // Declare variables for a connection string and a SELECT statement.
                string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                string sql = "SELECT ProductID, ProductName, imageURL,imagePOP, Description, PriceExSaleTax, CAST(PriceExSaleTax * "
                + "SaleTaxPercent as decimal(18,2)) As SaleTaxMoney, SaleTaxPercent, CAST(PriceExSaleTax * "
                + "(1 + SaleTaxPercent) as decimal(18,2)) As TotalPrice FROM Products ORDER BY ProductName ASC";

                // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
                // if there are an exception.
                using (SqlConnection cn = new SqlConnection(ConnString))
                {
                    // Create a SqlDataAdapter.
                    SqlDataAdapter sad = new SqlDataAdapter();

                    // Create a SqlCommand.
                    SqlCommand cmd = new SqlCommand(sql, cn);

                    // Create a DataTable.
                    DataTable dt = new DataTable();

                    // Create a PagedDataSource.
                    PagedDataSource objPds = new PagedDataSource();

                    // The Try/Catch/Finally block is used to handle exceptions.
                    try
                    {
                        // Open the SqlConnection.
                        cn.Open();

                        // Assign the select command to the SqlDataAdapter.
                        sad.SelectCommand = cmd;

                        // Fill the data table "dt" with data from the SqlDataAdapter
                        sad.Fill(dt);

                        // Populate the repeater control with the datatable 
                        objPds.DataSource = dt.DefaultView;

                        // Indicate that the data should be paged 
                        objPds.AllowPaging = true;

                        // Set the pagesize 
                        objPds.PageSize = 3;

                        // The current page (curpage) is declared as an integer
                        Int32 curpage;

                        // We set the page number for the current page from the page parameter in the url
                        // or to 1 if there are no page parameter in the url
                        if (Request.QueryString["page"] != null)
                        {
                            curpage = Convert.ToInt32(Request.QueryString["page"]);
                        }
                        else
                        {
                            curpage = 1;
                        }

                        // The current page index is equal to the current page minus 1 and we need to know this
                        // to show the right page to the user.
                        objPds.CurrentPageIndex = curpage - 1;

                        // We set the text in the middle to show the current pagenumber and the last pagenumber
                        lblCurrentPage.Text = "| Page: " + curpage.ToString() + " of " + objPds.PageCount.ToString() + " |";

                        // This is code for the link to the previous page, we don't show this link on the first page
                        if (!objPds.IsFirstPage)
                        {
                            lnkPrev.Visible = true;
                            lnkPrev.NavigateUrl = "~/Default.aspx?" + "page=" + Convert.ToString(curpage - 1);
                        }

                        // This is code for the link to the next page, we don't show this link on the last page
                        if (!objPds.IsLastPage)
                        {
                            lnkNext.Visible = true;
                            lnkNext.NavigateUrl = "~/Default.aspx?" + "page=" + Convert.ToString(curpage + 1);
                        }

                        // This code is used to bind data to the repeater control.
                        ProductListRepeater.DataSource = objPds;
                        ProductListRepeater.DataBind();

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally
                    {
                        // Dispose of objects to avoid memory leakage.
                        sad.Dispose();
                        cmd.Dispose();
                        dt.Dispose();
                    }
                }
            }
        }


        protected string GenerateURL(object Product)
        {
            //Create a URL for each product link
            string strProdUrl = "~/Product.aspx?Pid=" + Product;

            return strProdUrl;
        }

        

        

        
    }
}

