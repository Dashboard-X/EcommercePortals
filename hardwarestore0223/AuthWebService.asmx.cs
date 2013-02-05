using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace CopmuterOnLine
{
    /// <summary>
    /// Summary description for AuthWebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AuthWebService : System.Web.Services.WebService
    {

        [WebMethod]
        public bool GetDataSet(string txtUser,  string userLevel)
        {
            
            SqlConnection myConn = new SqlConnection(@"Data Source=EMAD-PC;Initial Catalog=ComputerOnline;Integrated Security=SSPI");
            SqlCommand myCmd = new SqlCommand("spValidUser1", myConn);
            myCmd.CommandType = CommandType.StoredProcedure;

            SqlParameter objParam1;
            //SqlParameter objParam2;
            SqlParameter objParam3;
            //SqlParameter returnParam;

            objParam1 = myCmd.Parameters.Add("@UserName", SqlDbType.VarChar);
            //objParam2 = myCmd.Parameters.Add("@Password", SqlDbType.VarChar);
            objParam3 = myCmd.Parameters.Add("@userLevel", SqlDbType.VarChar);
            //returnParam = myCmd.Parameters.Add("@Num_of_User", SqlDbType.Int);

            objParam1.Direction = ParameterDirection.Input;
            //objParam2.Direction = ParameterDirection.Input;
            objParam3.Direction = ParameterDirection.Input;
            //returnParam.Direction = ParameterDirection.ReturnValue;

            objParam1.Value = txtUser;
            //objParam2.Value = txtPass;
            objParam3.Value = userLevel;

            try
            {
                if (myConn.State.Equals(ConnectionState.Closed))
                {
                    myConn.Open();
                    myCmd.ExecuteNonQuery();
                }
                if (userLevel != "2222") 
                {
                    //MessageBox.Show("Invalid security code or login!");
                    return false;
                }
                else
                {
                    myConn.Close();
                    //MessageBox.Show("You are authorized Admin user");
                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex + "Error Connecting to the database");
                return false;
            }
            
        }
    }
}
