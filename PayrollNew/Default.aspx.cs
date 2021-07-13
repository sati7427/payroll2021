using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollNew
{
    public partial class _Default : Page
    {
       // private readonly Random _random = new Random(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("Login/Login.aspx");
           // txtx.Text = RandomNumber(1000, 9999).ToString();
        }
        //public int RandomNumber(int min, int max)
        //{
        //    return _random.Next(min, max);
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    ClientScript.RegisterStartupScript(this.GetType(), "Pop", "AlertModel();", true);
        //}  
    }
}