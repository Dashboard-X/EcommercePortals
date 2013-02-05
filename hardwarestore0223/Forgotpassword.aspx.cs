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
using System.Net.Mail;

namespace CopmuterOnLine
{
    public partial class Forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNewPassword_Click(object sender, EventArgs e)
        {
            // We first declare one variable that will store a username that we selected from the Customers table.
            string lookupUsername = string.Empty;

            // Set the ErrorMessage label to a Empty value.
            ErrorMessage.Text = string.Empty;

            // We select the username that corresponds to the supplied e-mail adress in the "txtEmail" textbox and
            // then add this selected username to the "lookupUsername" string.

            // The Try/Catch/Finally block is used to handle exceptions.
            try
            {
                string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                string sql = "SELECT Username FROM Customers WHERE Username=@username";

                // Create a SqlConnection. The using block is used to call dispose (close) automatically even if 
                // there are an exception.
                using (SqlConnection cn = new SqlConnection(ConnString))
                {
                    // Create a SqlCommand. The using block is used to call dispose (close) automatically even if 
                    // there are an exception.
                    using (SqlCommand cmd = new SqlCommand(sql, cn))
                    {
                        // Add parameters.
                        cmd.Parameters.AddWithValue("@username", txtEmail.Text);

                        // Open a connection.
                        cn.Open();

                        // Execute the select command and set a value for lookupUsername.
                        lookupUsername = Convert.ToString(cmd.ExecuteScalar());

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

            // We check if the selected username from the Customers table are equal to the supplied e-mail adress in the
            // "txtEmail" textbox and create a error message there is no match between them.
            if (lookupUsername == txtEmail.Text)
            {
                // We generate a new random password with the "generatePassword()" function and then hash this password
                // with SHA1 to store an encrypted password in the "Customers" table.
                string passwordHash = string.Empty;
                string NewPassword = generatePassword();

                passwordHash = FormsAuthentication.HashPasswordForStoringInConfigFile(NewPassword, "SHA1");

                // We update the password in the Customers table for the user that have requested to get a new
                // password with the encrypted version of our newly created password.
                try
                {
                    string ConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                    string sql = "UPDATE Customers SET Password = @Password WHERE Username = @Username";

                    // Create a SqlConnection. The using block is used to call dispose (close) automatically even if 
                    // there are an exception.
                    using (SqlConnection cn = new SqlConnection(ConnString))
                    {
                        // Create a SqlCommand. The using block is used to call dispose (close) automatically even if 
                        // there are an exception.
                        using (SqlCommand cmd = new SqlCommand(sql, cn))
                        {
                            // Add parameters.
                            cmd.Parameters.AddWithValue("@Username", lookupUsername);
                            cmd.Parameters.AddWithValue("@Password", passwordHash);

                            // Open the connection.
                            cn.Open();

                            // Execute the UPDATE statement.
                            cmd.ExecuteNonQuery();

                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                // Next we are about to send an email to the e-mail adress that we have selected from the "Customers" table.
                // We declare the email adress to send the e-mail to.
                string ToAddress = lookupUsername;

                // We create the mail message.

                MailMessage SendEmail = new MailMessage("emad_maan@yahoo.com", ToAddress);

                // We add subject an body to the mail message.

                SendEmail.Subject = "New password to MyWebshop.com";
                SendEmail.Body = "<html><body><b>Hi!</b><br />You receive this e-mail with a new password because of your request to get a new password.<br /><br />" + "Your new password:" + " " + NewPassword + "</body></html>";
                SendEmail.IsBodyHtml = true;

                // Send the e-mail (see the web.config settings for e-mail)
                SmtpClient smtp = new SmtpClient();
                smtp.Send(SendEmail);

                // Set visibilites for panels to give the user a confirmation
                NewPasswordPanel.Visible = false;
                ConfirmationPanel.Visible = true;

            }
            else
            {
                ErrorMessage.Text = "The supplied e-mail could not be found";
            }
        }

        protected string generatePassword()
        {

            // This function will create a random password with 11 characters and return this password
            // as "stringPassword".
            char[] arrPossibleChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".ToCharArray();
            int intPasswordLength = 10;
            string stringPassword = null;

            System.Random rand = new Random();

            int i = 0;
            for (i = 0; i <= intPasswordLength; i++)
            {
                int intRandom = rand.Next(arrPossibleChars.Length);
                stringPassword = stringPassword + arrPossibleChars[intRandom].ToString();
            }

            return stringPassword;
        }
    }
}
    