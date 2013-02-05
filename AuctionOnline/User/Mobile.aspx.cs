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

namespace AuctionOnline.User
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        private SqlConnection con;
        private DataSet set;
        private SqlDataAdapter adp;
        private int ii, chk;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = Session["uname"].ToString();
                ii = 0; chk = 0;
                set = new DataSet();
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString.ToString());
                con.Open();
                con.Close();

                add();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");

        }

        private void add()
        {
            adp = new SqlDataAdapter("select image,p_id,p_name from product join productgroup on product.pt_id=productgroup.pt_id where product_type='Mobile' and status='Stock' order by p_id desc ", con);
            adp.Fill(set);
            Table tbl = new Table();

            ii = set.Tables[0].Rows.Count - 1;
            for (int i = 0; i < (set.Tables[0].Rows.Count); i++)
            {
                TableRow row = new TableRow();
                for (int j = 0; j < 4; j++)
                {
                    TableCell col = new TableCell();
                    col.Width = 150;
                    col.Height = 190;






                    Table Itbl = new Table();
                    Itbl.CssClass = "cell";
                    for (int k = 0; k < 3; k++)
                    {
                        TableRow irow = new TableRow();
                        TableCell icol = new TableCell();

                        icol.Width = 150;

                        if (k == 0)
                        {
                            System.Web.UI.WebControls.Image img = new System.Web.UI.WebControls.Image();
                            img.ImageUrl = set.Tables[0].Rows[chk][k].ToString();
                            img.Width = 150;
                            img.Height = 150;
                            icol.Controls.Add(img);
                            irow.Cells.Add(icol);
                            icol.Height = 150;
                        }
                        else if (k == 1)
                        {
                            Label imn = new Label();
                            imn.Text = set.Tables[0].Rows[chk][k].ToString();
                            icol.Controls.Add(imn);
                            icol.Height = 20;
                            irow.Cells.Add(icol);

                        }
                        else
                        {
                            LinkButton lb = new LinkButton();

                            lb.Text = set.Tables[0].Rows[chk][k].ToString();  //LinkButton Text
                            lb.ID = Convert.ToString(chk); // LinkButton ID’s
                            lb.CommandArgument = set.Tables[0].Rows[chk][0].ToString();//Convert.ToString(ii); // LinkButton CommandArgument
                            lb.CommandName = set.Tables[0].Rows[chk][1].ToString(); //Convert.ToString(ii); // LinkButton CommanName
                            lb.Command += new CommandEventHandler(lb_Command); //Create Handler for it.
                            icol.Controls.Add(lb);
                            icol.Height = 20;
                            irow.Cells.Add(icol);
                        }




                        Itbl.Rows.Add(irow);
                    }

                    col.Controls.Add(Itbl);
                    row.Cells.Add(col);

                    if (chk == ii)
                    {

                        break;
                    }
                    else
                    {
                        chk++;
                        //  i++;
                    }

                }

                tbl.Rows.Add(row);
                if (chk == ii)
                { break; }
            }
            ph.Controls.Add(tbl);



            // ii = 0;

        }


        void lb_Command(object sender, CommandEventArgs e)
        {
            //  LinkButton lnkEmployee = (LinkButton)sender;
            Session["p_id"] = e.CommandName;
            Session["pic"] = e.CommandArgument;
            Response.Redirect("Photo.aspx");

        }

    }
}
