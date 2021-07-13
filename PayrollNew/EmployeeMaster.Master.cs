using PayrollNew.CsClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollNew
{
    public partial class EmployeeMaster : System.Web.UI.MasterPage
    {
        Connections con = new Connections();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logoutbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login/Login.aspx", false);
        }

        protected void Logoutmodelbtn_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("sp_LogoutData", con.SqlCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", Session["user"].ToString());
            cmd.ExecuteNonQuery();
            Session.Abandon();
            Response.Redirect("../Login/Login.aspx",false);
        }
    }
}