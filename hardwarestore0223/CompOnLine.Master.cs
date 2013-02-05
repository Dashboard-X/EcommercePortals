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
using System.Windows.Forms;

namespace CopmuterOnLine
{

    public partial class CompOnLine : System.Web.UI.MasterPage
    {
       
        protected void btnAdminlogin_Click(object sender, EventArgs e)
        {
            userAuthorization.AuthWebService user = new userAuthorization.AuthWebService();

            if (Page.IsValid)
            {
                if (user.GetDataSet(txtUsername.Text.Trim(), txtsecCode.Text.Trim()))
                {
                    Response.Redirect("Admincustomer.aspx");
                }

                else
                {
                    lblAdmin.Text = "Invalid Login, please try again!";
                }
            }
        }

        protected void Page_Load(object sender, System.EventArgs e)
        {

            // We check to see that this page loads by a new request for the page so that this code does not
            // run when there is a postback like when a button is clicked.
            if (!Page.IsPostBack)
            {
                // We check to see if there exists an FormAuthenticationTicket for the user.
                // Hide the "SigninPanel" and show the "CustomerPanel" if the user is signed in
                // on this website.
                if (Request.IsAuthenticated == true)
                {
                    // Get the FormsAuthentication ticket.
                    FormsIdentity id = (FormsIdentity)Page.User.Identity;
                    FormsAuthenticationTicket ticket = id.Ticket;

                    // This is information from the FormsAuthenticationTicket
                    lblUserName.Text = ticket.Name;

                    // Set visibilities for panels
                    SigninPanel.Visible = false;
                    CustomerPanel.Visible = true;
                    SmallCartPanel.Visible = true;

                    // Call subroutine to load the small shopping cart
                    LoadSmallCart();
                }
            }
        }

        protected void cmdLogin_Click(object sender, System.EventArgs e)
        {
            
            // This code will get executed when the "Sign in" button is clicked and the first thing that is
            // done is to check if the username and password corresponds to a user in the "Customers" table.
            // We are sending the username and password to the "ValidateUser" function in the If-statement
            // and will then return an answer from this function, se this function after this subroutine.
            if (ValidateUser(LoginUserName.Text, LoginUserPass.Text))
            {

                // We declare three variables that will be used to create a cookie for the signed in user.
                FormsAuthenticationTicket ticket = default(FormsAuthenticationTicket);
                string cookie = null;
                HttpCookie httpCookie = default(HttpCookie);

                // The FormsAuthenticationTicket is filled with data for version, name, issue date,
                // expiration date, if the cookie are persistent or not, user data and cookie path.
                ticket = new FormsAuthenticationTicket(1, LoginUserName.Text, DateTime.Now, DateTime.Now.AddMinutes(100), chkPersistCookie.Checked, HiddenCustomerID.Value, "MyPage");

                // The cookie is set to the encrypted ticket
                cookie = FormsAuthentication.Encrypt(ticket);

                // The httpCookie gets a name and the value from the cookie
                httpCookie = new HttpCookie(FormsAuthentication.FormsCookieName, cookie);

                // We set the expiration date for the httpCookie if the ticket is persistent. A HttpCookie
                // without an expire date will expire when the browser is closed.
                if (chkPersistCookie.Checked == true)
                {
                    httpCookie.Expires = ticket.Expiration;
                }

                // Set the cookie path.
                httpCookie.Path = FormsAuthentication.FormsCookiePath;

                // Add the httpCookie.
                Response.Cookies.Add(httpCookie);

                // Redirect the user to the Default page so that the right panels are visible
                Response.Redirect("Default.aspx");



            }
            else
            {
                lblMessage.Text = "* Incorrect password or e-mail";
            }


        }

        private bool ValidateUser(string userName, string passWord)
        {

            // This is a check that is done for the entered user name, i has to be between 1 and 80
            // characters. If this check is false this function will return a "False" statement and the
            // code below will not be executed. The "|" sign stands for "Or".
            if ((userName.Length == 0) | (userName.Length > 80))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
                return false;
            }

            // This is a check that is done for the entered password, i has to be between 1 and 25
            // characters. If this check is false this function will return a "False" statement and the
            // code below will not be executed. The "|" sign stands for "Or".
            if ((passWord.Length == 0) | (passWord.Length > 25))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
                return false;
            }

            // We receive the userName and passWord as variables when this function is called and we 
            // create the variable "lookupPassword" as a string to store the password that is selected from
            // the database. The hidden field "HiddenCustomer" that should store the customer id of the customer
            // are set to Blank at the start. The passWord that is passed to this function is encrypted with SHA1 
            // because the password that is stored in the table "Customers" are encrypted with SHA1 and therefore 
            // have to do this encryption to compare the entered password with the stored password in the database.
            string lookupPassword = null;

            HiddenCustomerID.Value = string.Empty;

            // Encrypt the password.
            string passwordHash = FormsAuthentication.HashPasswordForStoringInConfigFile(passWord, "SHA1");

            // This code is used to select the password and customer id from the "Customers" table according to
            // the supplied username in the "sign in form".

            // Declare variables for a connection string and a SELECT statement.
            string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string SelectUser = "SELECT CustomerID, Password FROM Customers WHERE Username = @Username";

            // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
            // if there are an exception.
            using (SqlConnection cn = new SqlConnection(ConnString))
            {
                // Create a SqlCommand.
                SqlCommand cmd = new SqlCommand(SelectUser, cn);

                // Create a SqlDataReader.
                SqlDataReader reader = null;

                // Add parameters.
                cmd.Parameters.AddWithValue("@Username", LoginUserName.Text);


                // The Try/Catch/Finally block is used to handle exceptions.
                try
                {
                    // Open the connection.
                    cn.Open();

                    // We use SqlDataReader and just want to select one single row. The CustomerID are
                    // supplied to the hidden field "HiddenCustomerID" and the Password are supplied to the
                    // "lookupPassword" string.

                    // Execute the SELECT statement and fill the reader with data.
                    reader = cmd.ExecuteReader(CommandBehavior.SingleRow);

                    // Loop the reader.
                    while (reader.Read())
                    {
                        HiddenCustomerID.Value = reader["CustomerID"].ToString();
                        lookupPassword = reader["Password"].ToString();

                    }

                }
                catch (Exception ex)
                {
                    System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
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

            // If no password is found this function will return false.
            if (lookupPassword == null)
            {
                // You could write failed login attempts here to the event log for additional security.
                return false;
            }
            // Compare lookupPassword and passwordHash by using a case-sensitive comparison.
            return (string.Compare(lookupPassword, passwordHash, false) == 0);

        }

        protected void btnSignOut_Click(object sender, System.EventArgs e)
        {
            // This code is executed when the user clicks the "Sign out" button and deletes the cookie and the ticket
            // for the customer.
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        public void LoadSmallCart()
        {
            // We declare "num" to iterate through the HttpCookie and we declare "CartCookie" to be able to check for
            // its existens and to get data from this HttpCookie.
            Int32 num = default(Int32);
            HttpCookie CartCookie = Request.Cookies.Get("CartCookie");
            ltCartItem.Text = string.Empty;

            // We check to see if the HttpCookie with the name of CartCookie exists so that we not
            // will get any null point exeptions if the HttpCookie does not exist. We also check if
            // the "CartCookie" has any keys, if there are no keys there are no products in the
            // shopping cart and then we create a message for this.
            if (CartCookie != null)
            {
                if (CartCookie.HasKeys)
                {
                    // We iterate through each post in the HttpCookie and get the ProductID and Quantity for
                    // each post. We update the literal control "ltCartItem" with data from each row in the HttpCookie.
                    for (num = 0; num <= CartCookie.Values.Count - 1; num++)
                    {
                        ltCartItem.Text += CartCookie.Values.AllKeys[num] + " (" + CartCookie.Values[num] + ")" + "<br />";
                    }
                }
                else
                {
                    ltCartItem.Text = "There are no items in your shopping cart.";
                }
            }
            else
            {
                ltCartItem.Text = "There are no items in your shopping cart.";
            }
        }

        protected void lnkAdmin_Click(object sender, EventArgs e)
        {
            SigninPanel.Visible = false;

            PanelAdmin.Visible = true;
        }

        protected void lnkDesktop_Click(object sender, EventArgs e)
        {
            Response.Redirect("Desktop.aspx");
        }

        protected void lnkLaptop_Click(object sender, EventArgs e)
        {
            Response.Redirect("laptop.aspx");
        }

        

    }
}