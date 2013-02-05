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
    public partial class Registercustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Takes the data from the form at "Register-customer.aspx" when the button is clicked and then inserts 
            // this data to the table "Customers" in the "Webshop" database. The password is encrypted with SHA1 and stored
            // as an encrypted password in the table.

            // Set the SqlEx label to a empty string.
            SqlEx.Text = string.Empty;

            string passwordHash = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
            string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string sql = "INSERT INTO Customers (Username, Password, Company, OrgNumber, Contact, Attention, Adress, "
            + "PostalCode, City, Country, userLevel) VALUES (@Username, @Password, @Company, @OrgNumber, @Contact, @Attention, "
            + "@Adress, @PostalCode, @City, @Country, '1')";

            // Create a SqlConnection. The using block is used to call dispose (close) automatically even 
            // if there are an exception.
            using (SqlConnection cn = new SqlConnection(ConnString))
            {
                // Create a SqlCommand.
                SqlCommand cmd = new SqlCommand(sql, cn);

                // Add parameters.
                cmd.Parameters.AddWithValue("@Username", txtUserName.Text);
                cmd.Parameters.AddWithValue("@Password", passwordHash);
                cmd.Parameters.AddWithValue("@Company", txtCompanyName.Text);
                cmd.Parameters.AddWithValue("@OrgNumber", txtOrganisationNumber.Text);
                cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                cmd.Parameters.AddWithValue("@Attention", txtAttention.Text);
                cmd.Parameters.AddWithValue("@Adress", txtAdress.Text);
                cmd.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                cmd.Parameters.AddWithValue("@City", txtCity.Text);
                cmd.Parameters.AddWithValue("@Country", txtCountry.Text);

                // The Try/Catch/Finally block is used to handle exceptions.
                try
                {
                    // Open the connection.
                    cn.Open();

                    // Execute the INSERT statement.
                    cmd.ExecuteNonQuery();

                    // Set visibility for panels.
                    CurrentPanel.Visible = false;
                    ThankYouPanel.Visible = true;

                }
                catch (SqlException Sqlexc)
                {
                    switch (Sqlexc.Number)
                    {
                        case 2601:
                            SqlEx.Text = "* Given E-mail already exists";
                            break;
                        default:
                            Response.Write(Sqlexc.Message);
                            break;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    // Dispose the SqlCommand to avoid memory leakage.
                    cmd.Dispose();
                }
            }
        }
    }
}

    