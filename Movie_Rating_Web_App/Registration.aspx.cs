using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Movie_Rating_Web_App.ServiceReference1;

namespace Movie_Rating_Web_App
{
    public partial class Registration : System.Web.UI.Page
    {
        ServiceReference1.Service1Client obj = new ServiceReference1.Service1Client();   
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            RegisterUser u = new RegisterUser();
            u.UserName = TextBox1.Text;
            u.Password = TextBox2.Text;
            string r = obj.Register(u);
            Label1.Text = r.ToString();
        }
    }
}