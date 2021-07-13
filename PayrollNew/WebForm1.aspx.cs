using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SpeechLib;

namespace PayrollNew
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected string Value { get; set; }
        private readonly Random _random = new Random(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox txtImageName = (TextBox)Page.FindControl("text");
            commentBox.InnerText =  RandomNumber(1000, 9999).ToString();
            Value = RandomNumber(1000, 9999).ToString();

          // txtx.Text = RandomNumber(1000,9999).ToString();
            
        }
        public int RandomNumber(int min, int max)
        {
            return _random.Next(min, max);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            //if (txtx.Text.Trim().Length > 0)
            //{
            //    SpVoice obj = new SpVoice();
            //    obj.Speak(txtx.Text, SpeechVoiceSpeakFlags.SVSFDefault);
            //}
        }  
    }
}