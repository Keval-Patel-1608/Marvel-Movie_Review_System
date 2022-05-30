using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Movie_Rating_Web_App
{
    public partial class MovieInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DLbind1();
                DLbind2();
            }
        }
       protected void DLbind1()
        { 
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Movie_rating;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();

            string query = "Select * from Movies WHERE Movie_Id = @Movie_Id";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Movie_Id", Request.QueryString["movie_id"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                DataList1.DataSource = dr;
                DataList1.DataBind();
            }
            con.Close();
        }

        protected void btn_cmt_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Movie_rating;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();

            int Movie_id = int.Parse(Request.QueryString["movie_id"]);

            string Username = (string)Session["username"];

            string Comment = cmt_txt.Text;

            SqlCommand cmd = new SqlCommand("insert into Movie_review values('"+Movie_id+"', '"+Username+"','"+Comment+"')", con);
            cmd.ExecuteNonQuery();
            cmt_txt.Text = "";

           // Response.Redirect("homepage.aspx");
            DLbind2();
        }

        protected void DLbind2()
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Movie_rating;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();

            string query = "Select * from Movie_Review WHERE Movie_Id = @Movie_Id";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Movie_Id", Request.QueryString["movie_id"].ToString());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows == true)
            {
                DataList2.DataSource = dr;
                DataList2.DataBind();
            }
            con.Close();
        }
        
    }
}