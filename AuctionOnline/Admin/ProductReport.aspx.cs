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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace AuctionOnline.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["uname"].ToString();
            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("ProductReport.rpt"));

            /*    ParameterFieldDefinitions PFDS;
                ParameterFieldDefinition PFD;
                ParameterValues PVS = new ParameterValues();
                ParameterDiscreteValue PDV = new ParameterDiscreteValue();
                PVS.Clear();
                PDV.Value = "";
                PFDS = cryRpt.DataDefinition.ParameterFields;
                PFD = PFDS["@sDate"];
                PVS = PFD.CurrentValues;
                //
                PVS.Add(PDV);
                PFD.ApplyCurrentValues(PVS);

                PDV.Value = "";
                PFDS = cryRpt.DataDefinition.ParameterFields;
                PFD = PFDS["@eDate"];
                PVS = PFD.CurrentValues;
                //PVS.Clear();
                PVS.Add(PDV);
                PFD.ApplyCurrentValues(PVS);*/


            cryRpt.SetDatabaseLogon("sa", "123", "server", "auction");
            CrystalReportViewer1.ReportSource = cryRpt;
            CrystalReportViewer1.RefreshReport();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }
    }
}
