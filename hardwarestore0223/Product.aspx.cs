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
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, System.EventArgs e)
        {

            // We check to see that this page loads without any postback on the page because it is unnessary to
            // to run this code if there only is a postback on the page like a click on a button.
            if (!Page.IsPostBack)
            {

                // When this webpage loads we request the product id from the parameter "Pid" in the url and
                // places this value in the hidden field "HiddenProductID".
                HiddenProductID.Value = Convert.ToString(Request.QueryString["Pid"]);

                // We select the product that has the product id that is saved in the "HiddenProductID" field and
                // binds the data from the select statement to the controls on "Product.aspx".

                // Declare variables for a connection string and a SELECT statement.
                string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                string sql = "SELECT ProductID, ProductName, Description, PriceExSaleTax, CAST(PriceExSaleTax * SaleTaxPercent as decimal(18,2)) As SaleTaxMoney, SaleTaxPercent, CAST(PriceExSaleTax * (1 + SaleTaxPercent) as decimal(18,2)) As TotalPrice FROM Products WHERE ProductID = @ProductID";

                // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
                // if there are an exception.
                using (SqlConnection cn = new SqlConnection(ConnString))
                {
                    // Create a SqlCommand.
                    SqlCommand cmd = new SqlCommand(sql, cn);

                    // Create a SqlDataReader.
                    SqlDataReader reader = null;

                    // Add parameters.
                    cmd.Parameters.AddWithValue("@ProductID", HiddenProductID.Value);

                    // The Try/Catch/Finally block is used to handle exceptions.
                    try
                    {
                        // Open the connection.
                        cn.Open();

                        // Execute the select statement and fill the reader.
                        reader = cmd.ExecuteReader(CommandBehavior.SingleRow);

                        // Loop the reader.
                        while (reader.Read())
                        {
                            HiddenProductID.Value = reader["ProductID"].ToString();
                            ltProductName.Text = reader["ProductName"].ToString();
                            ltDescription.Text = reader["Description"].ToString();
                            ltPriceExSaleTax.Text = reader["PriceExSaleTax"].ToString();
                            ltSaleTax.Text = reader["SaletaxMoney"].ToString();
                            ltSaleTaxPercent.Text = string.Format("{0:P}", reader["SaletaxPercent"]);
                            ltTotalPrice.Text = reader["TotalPrice"].ToString();
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
            }
        }

        protected void btnBuy_Click(object sender, System.EventArgs e)
        {
            // We first check to see if the user has signed in and if the user not is signed in we redirect him
            // to the "Not-signed-in.aspx" webpage.
            if (Request.IsAuthenticated == true)
            {
                // We declare one variable as int32 to be able to use the value in the quantity textbox.
                Int32 AddNumberOfUnits = default(Int32);

                // We try to convert the text in the textbox "txtQuantity" to a Int32 with the use of TRYPARSE and if this
                // operation succeed this value will be added to the "AddNumberOfUnits" variable. If the conversion not is
                // a success the "AddNumberOfUnits" variable gets 0 as the value.
                Int32.TryParse(txtQuantity.Text, out AddNumberOfUnits);

                // We declare ShoppingCookie as a HttpCookie, selects the cookie with the name "CartCookie" and
                // store this cookie in "ShoppingCookie". If we don´t find any cookie with the name of "CartCookie"
                // "ShoppingCookie will get "Nothing" as the value.
                HttpCookie ShoppingCookie = default(HttpCookie);
                ShoppingCookie = Request.Cookies.Get("CartCookie");

                // We check to see if the HttpCookie with the name of CartCookie exists so that we not
                // will get any null point exeptions if the HttpCookie does not exist. If the cookie
                // exists we use this cookie and if the cookie does not exist we create a new cookie.
                if (ShoppingCookie != null)
                {
                    // We check to see if the HttpCookie has keys, if the HttpCookie has keys we
                    // find the value (quantity) from the key that corresponds to the ProductID
                    // and add the supplied quantity to the old quantity. If the HttpCookie does
                    // not have keys we just add the supplied quantity to a key with the ProductID and
                    // deletes on key with the value of "Nothing" that are created in this case.
                    if (ShoppingCookie.HasKeys)
                    {
                        Int32 OldQty = Convert.ToInt32(Request.Cookies["CartCookie"][HiddenProductID.Value]);

                        ShoppingCookie.Values[HiddenProductID.Value] = Convert.ToString(OldQty + AddNumberOfUnits);
                        ShoppingCookie.Expires = DateTime.Now.AddHours(3);
                        Response.Cookies.Add(ShoppingCookie);
                    }
                    else
                    {
                        ShoppingCookie.Values[HiddenProductID.Value] = Convert.ToString(AddNumberOfUnits);
                        ShoppingCookie.Values.Remove(null);
                        ShoppingCookie.Expires = DateTime.Now.AddHours(3);
                        Response.Cookies.Add(ShoppingCookie);
                    }
                }
                else
                {

                    // If a CartCookie does not exist we create a new HttpCookie and add the 
                    // quantity to a key with the name of the ProductID.
                    ShoppingCookie = new HttpCookie("CartCookie");
                    ShoppingCookie.Values[HiddenProductID.Value] = Convert.ToString(AddNumberOfUnits);
                    ShoppingCookie.Expires = DateTime.Now.AddHours(3);
                    Response.Cookies.Add(ShoppingCookie);
                }

                // Update the small shopping cart by calling a public method in the Start class on
                // the masterpage.
                ((CompOnLine)this.Master).LoadSmallCart();

            }
            else
            {
                Response.Redirect("Notsignedin.aspx");
            }
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Shoppingcart.aspx");
        }
    }
}