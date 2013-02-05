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
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, System.EventArgs e)
        {

            // We check to see that this page loads without any postback on the page because it is unnessary to
            // to run this code if there only is a postback on the page.
            if (!Page.IsPostBack)
            {
                // We check to see if there exists an FormAuthenticationTicket for the user.
                if (Request.IsAuthenticated == true)
                {
                    // Create a FormsIdentity and a ticket.
                    FormsIdentity id = (FormsIdentity)User.Identity;
                    FormsAuthenticationTicket ticket = id.Ticket;

                    // The UserData information from the FormsAuthenticationTicket contains the
                    // "CustomerID" of the signed in user and this value is stored in the hidden field "HiddenCustomerID".
                    HiddenCustomerID.Value = ticket.UserData;

                    // We call this subroutine to create the order list
                    LoadOrderList();

                }
                else
                {
                    Response.Redirect("Not-signed-in.aspx");
                }
            }
        }

        protected void LoadOrderList()
        {

            // We select all orders from the "Orders" table where the CustomerID equals the CustomerID stored in the
            // hidden field "HiddenCustomerID" and binds the data to the "OrderListRepeater" control.

            // Declare variables for a connection string and a SELECT statement.
            string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string sql = "SELECT * FROM Orders WHERE CustomerID = @CustomerID ORDER BY OrderID ASC";

            // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
            // if there are an exception.
            using (SqlConnection cn = new SqlConnection(ConnString))
            {
                // Create a SqlCommand.
                SqlCommand cmd = new SqlCommand(sql, cn);

                // Create a SqlDataReader.
                SqlDataReader reader = null;

                // Add parameters.
                cmd.Parameters.AddWithValue("@CustomerID", HiddenCustomerID.Value);

                // The Try/Catch/Finally block is used to handle exceptions.
                try
                {
                    // Open the connection.
                    cn.Open();

                    // Execute the SELECT statement and fill the reader with data.
                    reader = cmd.ExecuteReader();

                    // Bind data to the OrderListRepeater with the reader as datasource.
                    OrderListRepeater.DataSource = reader;
                    OrderListRepeater.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    // Dispose the SqlCommand.
                    cmd.Dispose();

                    // Close the reader.
                    if (reader != null)
                        reader.Close();
                }
            }
        }

        protected void OrderListRepeater_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

            // We pick up the order id for the selected order according to the command argument and store
            // this value in a variable called "OrderID"
            string OrderID = (e.CommandArgument).ToString();

            // We set visiblity for OrderListPanel and OrderPanel.
            OrderListPanel.Visible = false;
            OrderPanel.Visible = true;

            // We select the order from the Orders table that has the same OrderID as the value in the
            // OrderID variable. We use an SQL datareader to get data and passes the data from one single row
            // (CommandBehavior.SingleRow) to labels on the Orders.aspx webpage.

            // Declare variables for a connection string and a SELECT statement.
            string ConnString1 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string sql1 = "SELECT * FROM Orders WHERE OrderID = @OrderID";

            // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
            // if there are an exception.
            using (SqlConnection cn = new SqlConnection(ConnString1))
            {
                // Create a SqlCommand.
                SqlCommand cmd = new SqlCommand(sql1, cn);

                // Create a SqlDataReader.
                SqlDataReader reader = null;

                // Add parameters.
                cmd.Parameters.AddWithValue("@OrderID", OrderID);

                // The Try/Catch/Finally block is used to handle exceptions.
                try
                {
                    // Open the connection.
                    cn.Open();

                    // Execute the SELECT statement and fill the reader with data.
                    reader = cmd.ExecuteReader(CommandBehavior.SingleRow);

                    // Loop the reader.
                    while (reader.Read())
                    {
                        lbOrderID.Text = reader["OrderID"].ToString();
                        lbOrderDate.Text = string.Format("{0:yyyy-MM-dd}", reader["OrderDate"].ToString());
                        lbName.Text = reader["Company"].ToString();
                        lbCustomerNumber.Text = reader["CustomerID"].ToString();
                        lbAttention.Text = reader["Attention"].ToString();
                        lbContact.Text = reader["Contact"].ToString();
                        lbAdress.Text = reader["Adress"].ToString();
                        lbPostalCode.Text = reader["PostalCode"].ToString();
                        lbCity.Text = reader["City"].ToString();
                        lbCountry.Text = reader["Country"].ToString();
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    // Dispose the SqlCommand.
                    cmd.Dispose();

                    // Close the reader.
                    if (reader != null)
                        reader.Close();
                }
            }

            // When we have selected a order we want to select the product rows for this order in the OrdersProducts
            // table and fill the "ProductRowRepeater" with these rows. In our SELECT statement we have a INNER JOIN
            // statement to get the product name from the "Products" table and a calculation for row sum.

            // Declare variables for a connection string and a SELECT statement.
            string ConnString2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string sql2 = "SELECT O.ProductID, P.ProductName, O.SaleTaxPercent * 100 As VATP , O.Quantity, O.PriceExSaleTax, O.Quantity * O.PriceExSaleTax As RowSum FROM OrdersProducts As O INNER JOIN Products As P ON P.ProductID = O.ProductID WHERE OrderID = @OrderID GROUP BY O.ProductID, P.ProductName, O.SaleTaxPercent, O.Quantity, O.PriceExSaleTax ORDER BY ProductID ASC";

            // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
            // if there are an exception.
            using (SqlConnection cn = new SqlConnection(ConnString2))
            {
                // Create a SqlCommand.
                SqlCommand cmd = new SqlCommand(sql2, cn);

                // Create a SqlDataReader.
                SqlDataReader reader = null;

                // Add parameters.
                cmd.Parameters.AddWithValue("@OrderID", OrderID);

                // The Try/Catch/Finally block is used to handle exceptions.
                try
                {
                    // Open the connection.
                    cn.Open();

                    // Execute the SELECT statement and fill the reader with data.
                    reader = cmd.ExecuteReader();

                    // Bind data to the ProductRowRepeater.
                    ProductRowRepeater.DataSource = reader;
                    ProductRowRepeater.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    // Dispose the SqlCommand.
                    cmd.Dispose();

                    // Close the reader.
                    if (reader != null)
                        reader.Close();
                }
            }

            // Call subroutine to calculate total sums.
            CalculateOrderSums();
        }

        protected void linkOrderList_Click(object sender, System.EventArgs e)
        {
            // Set visiblity for OrderListPanel and OrderPanel.
            OrderListPanel.Visible = true;
            OrderPanel.Visible = false;
        }

        protected void CalculateOrderSums()
        {

            // We declare two variables that we will use for our calculations of total sums.
            decimal PriceExVat = 0m;
            decimal VatMoney = 0m;

            // We iterate through each row in the "ProductRowRepeater and add values to our two variables
            foreach (RepeaterItem RepeaterRow in ProductRowRepeater.Items)
            {
                Literal VatObj = (Literal)RepeaterRow.FindControl("ltVAT");
                Literal RowSumObj = (Literal)RepeaterRow.FindControl("ltRowSum");

                PriceExVat += Convert.ToDecimal(RowSumObj.Text);
                VatMoney += Convert.ToDecimal(RowSumObj.Text) * (Convert.ToDecimal(VatObj.Text) / 100);
            }

            // We add the sums to labels and calculate the totalsum as price excluding VAT plus VAT in money
            lblPriceTotal.Text = Convert.ToString(PriceExVat);
            lblVatTotal.Text = Convert.ToString(VatMoney);
            lblTotalSum.Text = Convert.ToString(PriceExVat + VatMoney);

        }
    }

}