using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Movie_Rating_Web_App
{

    public partial class homepage : System.Web.UI.Page
    {
        public string str;
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                DLbind();
            }
               
        }

       protected void DLbind()
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Movie_rating;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Movies", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                DataList1.DataSource = dr;
                DataList1.DataBind();
                          
            }
        }
    }
}