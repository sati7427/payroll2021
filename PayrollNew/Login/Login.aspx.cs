using PayrollNew.CsClass;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PayrollNew.Login
{
    public partial class Login : System.Web.UI.Page
    {
        private readonly Random _random = new Random();
        Connections Conn = new Connections();
        LoginClasses ForClass = new LoginClasses();
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            txtUser.Focus();
            commentBox.InnerText = _random.Next(1000, 9999).ToString();
        }

        protected void SubmitLogin_Click(object sender, EventArgs e)
        {
            string captcha = Request.Form["commentBox"];

            if (captcha == txtCaptcha.Text.ToString())
            {
                string Pass = ForClass.Hashresult(txtPass.Text.Trim());//Hashresult();
                string Act=ForClass.Active(txtUser.Text.ToString().Trim());
                if (Act == "1" || Act == "")
                { 
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Already User Logged in.')", true);
                    ClearAll();
                }
                else
                {
                    try
                    {
                        cmd = new SqlCommand("sp_LoginData1", Conn.SqlCon());
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@UserName", txtUser.Text.ToString().Trim());
                        cmd.Parameters.AddWithValue("@pwd", Pass.ToString());
                        SqlDataAdapter _da = new SqlDataAdapter(cmd);
                        DataSet _ds = new DataSet();
                        _da.Fill(_ds);
                        int _dsRowsCount = _ds.Tables[0].Rows.Count;

                        if (_dsRowsCount > 0)
                        {
                            Session["user"] = _ds.Tables[0].Rows[0]["UserName"].ToString();
                            Session["Roleid"] = _ds.Tables[0].Rows[0]["Roleid"].ToString();
                            string hh = Session["user"].ToString();
                            string hhh = Session["Roleid"].ToString();
                            ClearAll();
                            Response.Redirect("../EmpMaster/PermanentDetails.aspx", true);
                        }

                    }
                    catch (Exception ex)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.ToString() + "')", true);
                    }
                }
            }
            //cptCaptcha.ValidateCaptcha(txtCaptcha.Text.Trim());
            //if (cptCaptcha.UserValidated)
            //{}
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Captcha')", true);
                ClientScript.RegisterStartupScript(this.GetType(), "Pop", "AlertModel();", true);
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                lblErrorMessage.Text = "InValid Captcha";
                ClearAll();
            }
        }

       
        private void ClearAll()
        {
            txtUser.Text = "";
            txtPass.Text = "";
            txtCaptcha.Text = "";
        }
      
        public string GetLanIPAddressIvp4()
        {
            string IP4Address;
            IP4Address = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (IP4Address == "" || IP4Address == null)
                IP4Address = Request.ServerVariables["REMOTE_ADDR"];

            return IP4Address;
        }
    }
}