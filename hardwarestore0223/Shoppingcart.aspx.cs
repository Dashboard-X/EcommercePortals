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
    public partial class Shoppingcart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, System.EventArgs e)
        {
            // We check to see that this page loads without any postback on the page because it is unnessary to
            // to run this code if there only is a postback on the page like a click on a button.
            if (!Page.IsPostBack)
            {
                // We check to see if there exists an FormAuthenticationTicket for the user.
                if (Request.IsAuthenticated == true)
                {
                    // Declare variables for a FormsIdentity and a ticket.
                    FormsIdentity id = (FormsIdentity)User.Identity;
                    FormsAuthenticationTicket ticket = id.Ticket;

                    // We get the CustomerID from UserData in the FormsAuthenticationTicket and store this value
                    // in the hidden field "HiddenCustomerID".
                    HiddenCustomerID.Value = Convert.ToString(ticket.UserData);

                    // We call this subroutine to create our shopping cart.
                    LoadShoppingCart();

                }
                else
                {
                    Response.Redirect("Not-signed-in.aspx");
                }
            }
        }

        protected void LoadShoppingCart()
        {
            // We create a DataTable (in memory) to store data in and a DataRow so that we can add rows to the
            // DataTable as we iterate through each product in the HttpCookie.
            DataTable tblShoppingCart = new DataTable("CartTable");
            DataRow rwShoppingCart = null;

            // We declare "num" to iterate through the HttpCookie and we declare "CartCookie" to be able to check for
            // its existens and to get data from this HttpCookie.
            Int32 num = default(Int32);
            HttpCookie CartCookie = Request.Cookies.Get("CartCookie");

            // We check to see if the HttpCookie with the name of CartCookie exists so that we not
            // will get any null point exeptions if the HttpCookie does not exist. We also check if
            // the "CartCookie" has any keys, if there are no keys there are no products in the
            // shopping cart and then we will get an exeption if we try to selects products
            // from the "Products" table.
            if (CartCookie != null)
            {
                if (CartCookie.HasKeys)
                {
                    // We add 5 columns to our DataTable, we need to add the columns before we iterate through each
                    // product so that we get only one set of columns :-).
                    tblShoppingCart.Columns.Add("ProductIDC");
                    tblShoppingCart.Columns.Add("ProductName");
                    tblShoppingCart.Columns.Add("SaletaxPercent");
                    tblShoppingCart.Columns.Add("QuantityC");
                    tblShoppingCart.Columns.Add("PriceExSaleTax");

                    // We iterate through each post in the HttpCookie and get the ProductID and Quantity for
                    // each post. We use the ProductID to select data from the Products table.

                    for (num = 0; num <= CartCookie.Values.Count - 1; num++)
                    {

                        string ProductID = CartCookie.Values.AllKeys[num];
                        string Quantity = CartCookie.Values[num];

                        try
                        {
                            string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                            string sql = "SELECT * FROM Products WHERE ProductID = @ProductID";

                            // Create a SqlConnection. The using block is used to call dispose (close) automatically 
                            // even if there are an exception.
                            using (SqlConnection cn = new SqlConnection(ConnString))
                            {
                                // Create a SqlCommand. The using block is used to call dispose (close) automatically 
                                // even if there are an exception.
                                using (SqlCommand cmd = new SqlCommand(sql, cn))
                                {
                                    // Add parameters.
                                    cmd.Parameters.AddWithValue("@ProductID", ProductID);

                                    // Open the connection.
                                    cn.Open();

                                    // Create a SqlDatareader and execute the SELECT command. The using block is used 
                                    // to call dispose (close) automatically even if there are an exception.
                                    using (SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.SingleRow))
                                    {

                                        while (reader.Read())
                                        {
                                            // We add one row to the DataTable and fill each cell with data.
                                            rwShoppingCart = tblShoppingCart.NewRow();
                                            rwShoppingCart[0] = ProductID;
                                            rwShoppingCart[1] = reader["ProductName"].ToString();
                                            rwShoppingCart[2] = Convert.ToDecimal(reader["SaletaxPercent"]) * 100;
                                            rwShoppingCart[3] = Quantity;
                                            rwShoppingCart[4] = reader["PriceExSaleTax"].ToString();
                                            tblShoppingCart.Rows.Add(rwShoppingCart);

                                        }
                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.Message);
                        }
                    }

                    // We fill our Repeater control with the data from the "tblShoppingCart" DataTable.
                    CartRepeater.DataSource = tblShoppingCart;
                    CartRepeater.DataBind();

                    // Call a subroutine to calculate totals in the shopping cart.
                    CalculateCartSums();

                }
                else
                {

                    // If the HttpCookie does not have any keys we update the shopping cart so that it does not show
                    // any rows.
                    CartRepeater.DataSource = string.Empty;
                    CartRepeater.DataBind();

                    // Call a subroutine to calculate totals in the shopping cart
                    CalculateCartSums();

                }
            }
        }

        protected void CartRepeater_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            // This code runs when a user has clicked a remove button (X) on a row.
            // We get the ProductID from the CommandArgument when the remove button is clicked.
            string ProductID = (e.CommandArgument).ToString();

            // We declare the variable CartCookie to check if the HttpCookie "CartCookie" exits and to 
            // be able to remove a key from it.
            HttpCookie CartCookie = Request.Cookies.Get("CartCookie");

            // We check if the CartCookie exists and then removes the key that has the "ProductID" as its name
            // and then we then reload the shopping cart so that our repeater gets updated.
            if (CartCookie != null)
            {
                CartCookie.Values.Remove(ProductID);
                CartCookie.Expires = DateTime.Now.AddHours(3);
                Response.Cookies.Add(CartCookie);

                // Reload the shopping cart
                LoadShoppingCart();

                // Update the small shopping cart by calling a public method in the Start class for the masterpage.
                ((CompOnLine)this.Master).LoadSmallCart();
            }
        }

        protected void btnUpdateCart_Click(object sender, System.EventArgs e)
        {
            // We declare the variable CartCookie to check if the HttpCookie "CartCookie" exits and to 
            // be able to remove a key from it.
            HttpCookie CartCookie = Request.Cookies.Get("CartCookie");

            // We check to see if the HttpCookie with the name of CartCookie exists so that we not
            // will get any null point exeptions if the HttpCookie does not exist.
            if (CartCookie != null)
            {
                if (CartCookie.HasKeys)
                {
                    foreach (RepeaterItem RepeaterRow in CartRepeater.Items)
                    {
                        Literal ProductObj = (Literal)RepeaterRow.FindControl("ltProductID");
                        TextBox QuantityObj = (TextBox)RepeaterRow.FindControl("txtQuantity");

                        CartCookie.Values[ProductObj.Text] = QuantityObj.Text;
                        CartCookie.Expires = DateTime.Now.AddHours(3);
                        Response.Cookies.Add(CartCookie);
                    }

                }

                // Recalculate the shopping cart
                CalculateCartSums();

                // Update the small shopping cart by calling a public method in the Start class for the masterpage.
                ((CompOnLine)this.Master).LoadSmallCart();

            }

        }

        protected void btnCheckOut_Click(object sender, System.EventArgs e)
        {
            // When the user wants to check out and has clicked the "Check out" button we make the
            // "CheckOutPanel" (includes textboxes for customer information) visible.
            CheckOutPanel.Visible = true;

            // We use the value for CustomerID that is stored in the hidden field "HiddenCustomerID" to get
            // information on the customer in the "Customers" table and inserts this information in textboxes.
            // We use an SqlDataReader to get the information and just want to select one single row (CommandBehavior.SingleRow).

            try
            {
                string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                string sql = "SELECT * FROM Customers WHERE CustomerID = @CustomerID";

                // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
                // if there are an exception.
                using (SqlConnection cn = new SqlConnection(ConnString))
                {
                    // Create a SqlCommand. The using block is used to call dispose (close) automatically even 
                    // if there are an exception.
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        // Add parameters.
                        cmd.Parameters.AddWithValue("@CustomerID", HiddenCustomerID.Value);

                        // Open the connection.
                        cn.Open();

                        // Create a SqlDataReader. The using block is used to call dispose (close) automatically 
                        // even if there are an exception.
                        using (SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.SingleRow))
                        {

                            while (reader.Read())
                            {
                                txtCompany.Text = reader["Company"].ToString();
                                txtOrganisationNumber.Text = reader["OrgNumber"].ToString();
                                txtContact.Text = reader["Contact"].ToString();
                                txtAttention.Text = reader["Attention"].ToString();
                                txtAdress.Text = reader["Adress"].ToString();
                                txtPostalCode.Text = reader["PostalCode"].ToString();
                                txtCity.Text = reader["City"].ToString();
                                txtCountry.Text = reader["Country"].ToString();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnOrder_Click(object sender, System.EventArgs e)
        {
            // We declare the variable "Identity" that will store the OrderID of the order that is added so that we can use
            // this OrdeID number when we are to insert data in the table "OrderProduct" that has a many to many relationsship
            // to the Order table. Check database diagrams to se the relationships between tables.

            Int64 Identity = 0;

            // We insert an order in the "Orders" table that has OrderID as a identity field that increments with 1.
            // We have added ; SELECT SCOPE_IDENTITY() to the SQL statement to get the OrderID of the inserted order
            // and use "ExecuteScalar()" instead of "ExecuteNonQuery()" in the SQL command.

            try
            {
                string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                string sql = "INSERT INTO Orders (OrderDate, CustomerID, Company, OrgNumber, Contact, Attention, "
                + "Adress, PostalCode, City, Country) VALUES (@OrderDate, @CustomerID, @Company, @OrgNumber, "
                + "@Contact, @Attention, @Adress, @PostalCode, @City, @Country); SELECT SCOPE_IDENTITY()";

                DateTime dt = DateTime.Parse(txtOrdDate.Text);

                // Create a SqlConnection. The using block is used to call dispose (close) automatically even if 
                // there are an exception.
                using (SqlConnection cn = new SqlConnection(ConnString))
                {
                    // Create a SqlCommand. The using block is used to call dispose (close) automatically even if 
                    // there are an exception.
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        // Add parameters.
                        cmd.Parameters.AddWithValue("@OrderDate", dt);
                        cmd.Parameters.AddWithValue("@CustomerID", HiddenCustomerID.Value);
                        cmd.Parameters.AddWithValue("@Company", txtCompany.Text);
                        cmd.Parameters.AddWithValue("@OrgNumber", txtOrganisationNumber.Text);
                        cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                        cmd.Parameters.AddWithValue("@Attention", txtAttention.Text);
                        cmd.Parameters.AddWithValue("@Adress", txtAdress.Text);
                        cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                        cmd.Parameters.AddWithValue("@City", txtCity.Text);
                        cmd.Parameters.AddWithValue("@Country", txtCountry.Text);

                        // Open the connection
                        cn.Open();

                        // Execute the INSERT statement and get the Identity number.
                        Identity = Convert.ToInt64(cmd.ExecuteScalar());

                    }
                }
            }
            catch (SqlException Sqlex)
            {
                Response.Write(Sqlex.Message);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            // When we have inserted an order we want to insert the product rows for the order in the "OrdersProducts" table.
            // We first check to see that the identity variable not has a blank value before we insert data to the
            // "OrdersProducts" table.
            if (Identity > 0)
            {
                // We iterate through each repeater row in the "CartRepeater" and insert every row in the
                // "OrdersProduct" table.

                foreach (RepeaterItem RepeaterRow in CartRepeater.Items)
                {
                    Literal ProductIDObj = (Literal)RepeaterRow.FindControl("ltProductID");
                    Literal VATObj = (Literal)RepeaterRow.FindControl("ltVAT");
                    TextBox QuantityObj = (TextBox)RepeaterRow.FindControl("txtQuantity");
                    Literal PriceObj = (Literal)RepeaterRow.FindControl("ltPrice");

                    try
                    {
                        string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                        string sql = "INSERT INTO OrdersProducts (OrderID, ProductID, SaleTaxPercent, Quantity, PriceExSaleTax) VALUES (@OrderID, @ProductID, @SaleTaxPercent, @Quantity, @PriceExSaleTax)";

                        // The using block is used to call dispose (close) automatically even if there are an exception.
                        using (SqlConnection cn = new SqlConnection(ConnString))
                        {
                            using (SqlCommand cmd = new SqlCommand(sql, cn))
                            {
                                cmd.Parameters.AddWithValue("@OrderID", Identity);
                                cmd.Parameters.AddWithValue("@ProductID", ProductIDObj.Text);
                                cmd.Parameters.AddWithValue("@SaleTaxPercent", Convert.ToDecimal(VATObj.Text) / 100);
                                cmd.Parameters.AddWithValue("@Quantity", Convert.ToDecimal(QuantityObj.Text));
                                cmd.Parameters.AddWithValue("@PriceExSaleTax", Convert.ToDecimal(PriceObj.Text));

                                cn.Open();
                                cmd.ExecuteNonQuery();
                            }
                        }
                    }
                    catch (SqlException Sqlex)
                    {
                        Response.Write(Sqlex.Message);
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }

                // Delete the HttpCookie, we declare the variable CartCookie to check if the HttpCookie "CartCookie" 
                // exits and to be able to remove it.
                HttpCookie CartCookie = Request.Cookies.Get("CartCookie");

                // We check if the CartCookie exists and then sets the expiration date to current DateTime minus one hour
                if (CartCookie != null)
                {
                    CartCookie.Expires = DateTime.Now.AddHours(-1);
                    Response.Cookies.Add(CartCookie);
                }

                // Redirect the user to the order list webpage
                Response.Redirect("Orders.aspx");

            }
        }

        protected void CalculateCartSums()
        {
            // We declare variables to calculate totals for the shopping cart.

            decimal PriceTotal = 0m;
            decimal VatTotal = 0m;

            // We iterate through each row in the "CartRepeater" and add values to our three variables
            foreach (RepeaterItem RepeaterRow in CartRepeater.Items)
            {
                Literal VatObj = (Literal)RepeaterRow.FindControl("ltVAT");
                Literal PriceExVat = (Literal)RepeaterRow.FindControl("ltPrice");
                TextBox QuantityObj = (TextBox)RepeaterRow.FindControl("txtQuantity");

                // Additions for totals
                PriceTotal += Convert.ToDecimal(PriceExVat.Text) * Convert.ToDecimal(QuantityObj.Text);
                VatTotal += Convert.ToDecimal(PriceExVat.Text) * Convert.ToDecimal(QuantityObj.Text) * (Convert.ToDecimal(VatObj.Text) / 100);

            }

            // We set the totals to labels under our repeater control and calculate the totalsum
            lblPriceTotal.Text = Convert.ToString(PriceTotal);
            lblVatTotal.Text = Convert.ToString(VatTotal);
            lblTotalSum.Text = Convert.ToString(PriceTotal + VatTotal);
        }
    }
}