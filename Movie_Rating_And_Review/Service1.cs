using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Movie_Rating_And_Review
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {
        public List<string> LoginUserDetails(UserDetails userInfo)
        {
            List<string> usr = new List<string>();

            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Movie_rating;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from users where username=@UserName and password=@Password", con);
            cmd.Parameters.AddWithValue("@UserName", userInfo.UserName);
            cmd.Parameters.AddWithValue("@Password", userInfo.Password);
            

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read() == true)
            {
                usr.Add(dr[1].ToString());
                usr.Add(dr[2].ToString());
            }
            con.Close();
            return usr;
        }

        public string Register(RegisterUser user)
        {
            string msg;
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Movie_rating;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into users (username , password) values(@UserName,@Password )", con);
            cmd.Parameters.AddWithValue("@UserName", user.UserName);
            cmd.Parameters.AddWithValue("@Password", user.Password);

            int g = cmd.ExecuteNonQuery();
            if (g == 1)
            {
                msg = "User registered";
            }
            else
            {
                msg = "User not registered";
            }
            con.Close();
            return msg;
        }
    }   
}
