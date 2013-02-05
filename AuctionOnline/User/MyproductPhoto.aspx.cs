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
using System.Web.Mail;

namespace AuctionOnline.User
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        private SqlCommand cmd;
        private SqlConnection con;
        private SqlDataAdapter adp;
        private DataSet set;
        private string pid,uid,bid,status;
        protected void Page_Load(object sender, EventArgs e)
        {
            set = new DataSet();
            Label1.Text = Session["uname"].ToString();
            pid = Session["p_id"].ToString();
            Image1.ImageUrl = Session["pic"].ToString();
            Label2.Text = pid;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
            info();
            info2();
            topten();
            chk();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }

        protected void info()
        {
            try
            {
                cmd = new SqlCommand("select product.P_name,email from product join productgroup on productgroup.pt_id=product.pt_id join user1 on product.uid=user1.uid  where product.p_id=" + pid + "", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Label3.Text = rd["p_name"].ToString();
                    //    Label4.Text = rd["email"].ToString();
                }


                con.Close();


            }
            catch (Exception ff)
            {
                con.Close();
                Label2.Text = "There is Problem in info";
            }

        }


        protected void info2()
        {
            try
            {
                cmd = new SqlCommand("select user1.uid,email,bid_id, bprice from bid join user1 on bid.uid=user1.uid  where bprice = (select max(bprice)as max from bid where p_id=" + pid + ")", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    uid = rd["uid"].ToString();
                    Label4.Text = rd["email"].ToString();
                    bid = rd["bid_id"].ToString();
                    Label5.Text = rd["bprice"].ToString();


                }
                con.Close();

            }
            catch (Exception ff)
            {
                con.Close();
               Label6.Text = "Problem in info2";
            }
        }
        protected void topten()
        {
            set.Clear();

            adp = new SqlDataAdapter("select top(10)* from bid where p_id=" + pid, con);
            adp.Fill(set);
            GridView1.DataSource = set.Tables[0];
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {if(Label4.Text.Equals("Not Avail"))
        {
            Label6.Text = "There is No BID for this Product";
        }
        else{
            try
            {

                string date = DateTime.Now.Date.ToShortDateString();
                cmd = new SqlCommand("insert into biderwon values(" + bid + "," + pid + "," + uid + ",'" + date + "'," + Label5.Text + ")", con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                con.Close();
                Update();
                em();
                Label6.Text = "Product Sold";
                Button1.Enabled = false;
                
            }
            catch (Exception ff)
            {
                con.Close();
                Label6.Text = ff.ToString();//"There is Some Error";
            }
        }
        }


        protected void chk()
        {
            try
            {
                cmd = new SqlCommand("select status from product where p_id="+pid, con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    status=rd["status"].ToString();
                }
                con.Close();
                if (status.Equals("Stock"))
                {

                }
                else
                {
                    Button1.Enabled = false;
                    Label6.Text = "Product Already Sold";
                }

            }
            catch (Exception ff)
            {
                con.Close();
            }

        }

        protected void Update()
        {
            try
            {
                cmd = new SqlCommand("update product set status='Not Avail' where p_id="+pid, con);
                con.Open();
                SqlDataReader rd = cmd.ExecuteReader();
                con.Close();
            }
            catch (Exception ff)
            {
                con.Close();
                Label6.Text = "There is some Problem";
            }
        }


        private void em()
        {

            MailMessage mailMsg = new MailMessage();
            mailMsg.From = "s03422722538@gmail.com";
            mailMsg.To = "skygocomputer@yahoo.co.in";
            mailMsg.Cc = "s03422722538@gmail.com";
            //mailMsg.Bcc = bcc;
            mailMsg.Subject = "Congratulation Messages Online Bidding";
            mailMsg.BodyFormat = MailFormat.Text;
            mailMsg.Body = "congratulation you have won the Bid on This product and The product id is= "+Label2.Text+" and Product Name is"+Label3.Text;
            mailMsg.Priority = MailPriority.High;
            // Smtp configuration
            SmtpMail.SmtpServer = "smtp.gmail.com";//smtp is :smtp.gmail.com
            // - smtp.gmail.com use smtp authentication
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", "s03422722538@gmail.com");
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", "abc123+-");
            // - smtp.gmail.com use port 465 or 587
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");//port is: 465
            // - smtp.gmail.com use STARTTLS (some call this SSL)
            mailMsg.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");
            // try to send Mail
            try
            {
                SmtpMail.Send(mailMsg);
                //  return "";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message.ToString();
            }

        }


    }
}
