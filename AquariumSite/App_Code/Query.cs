using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
/// <summary>
/// Summary description for Query
/// </summary>
public class Query
{

    public Query()
    {
        //
        // TODO: Add constructor logic here
        //
    }
   

    public int insertData(String query)
    {
        String connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(connString);
        SqlCommand cmd = new SqlCommand(query,conn);
        conn.Open();
        int row = cmd.ExecuteNonQuery();
        conn.Close();
        if (row > 0)
        {
            return row;
        }
        else
        {
            return 0;
        }
    }


    public  List<User> fetchUserRequests(String query)
    {
        List<User> uList = new List<User>();
        String connString = "Data Source=localhost;Initial Catalog=AquariumTicketing;Integrated Security=true;pooling = true";//ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        //  SqlConnection conn = new SqlConnection(connString);
        using (SqlConnection con = new SqlConnection(connString))
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query,con);

            //  conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    User u = new User();
                    u.Id = reader.GetInt32(0).ToString();
                    u.firstName = reader.GetString(1);
                    u.LastName = reader.GetString(2);
                    u.Username = reader.GetString(3);
                    u.SubmittedOn = reader.GetDateTime(4).ToString();
                    uList.Add(u);
                    //uList.Add(new User { firstName = reader.GetString(1), LastName = reader.GetString(2), Username = reader.GetString(3), Password = reader.GetString(4), isApproved = reader.GetInt32(5) });
                }
            }
            con.Close();
        }
      
        // DataTable dt = new DataTable();

      
        return uList;
    }


    public List<Show> fetchShow(String query)
    {
        List<Show> sList = new List<Show>();
        String connString = "Data Source=localhost;Initial Catalog=AquariumTicketing;Integrated Security=true;pooling = true";//ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        //  SqlConnection conn = new SqlConnection(connString);
        using (SqlConnection con = new SqlConnection(connString))
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);

            //  conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Show s = new Show();
                    s.Id = reader.GetInt32(0).ToString();
                    s.title = reader.GetString(1);
                    s.Description = reader.GetString(2);
                    s.date = reader.GetString(3);
                    s.time = reader.GetString(4);
                    s.price = reader.GetString(5);
                    sList.Add(s);
                    //uList.Add(new User { firstName = reader.GetString(1), LastName = reader.GetString(2), Username = reader.GetString(3), Password = reader.GetString(4), isApproved = reader.GetInt32(5) });
                }
            }
            con.Close();
        }

        // DataTable dt = new DataTable();


        return sList;
    }


    public List<loginClass> fetchUserLogin(String query)
    {
        List<loginClass> uList = new List<loginClass>();
        String connString = "Data Source=localhost;Initial Catalog=AquariumTicketing;Integrated Security=true;pooling = true";//ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        //  SqlConnection conn = new SqlConnection(connString);
        using (SqlConnection con = new SqlConnection(connString))
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);

            //  conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    loginClass u = new loginClass();
                    u.username = reader.GetString(0);
                    u.password = reader.GetString(1);
                    uList.Add(u);
                    //uList.Add(new User { firstName = reader.GetString(1), LastName = reader.GetString(2), Username = reader.GetString(3), Password = reader.GetString(4), isApproved = reader.GetInt32(5) });
                }
            }
            con.Close();
        }

        // DataTable dt = new DataTable();


        return uList;
    }

    public int deleteReq(string query)
    {
        String connString = "Data Source=localhost;Initial Catalog=AquariumTicketing;Integrated Security=true;pooling = true";//ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        //  SqlConnection conn = new SqlConnection(connString);
        using (SqlConnection con = new SqlConnection(connString))
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                return row;
            }
            else
            {
                return 0;
            }
        }
    }

    public int approveReq(string query)
    {
        String connString = "Data Source=localhost;Initial Catalog=AquariumTicketing;Integrated Security=true;pooling = true";//ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        //  SqlConnection conn = new SqlConnection(connString);
        using (SqlConnection con = new SqlConnection(connString))
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                return row;
            }
            else
            {
                return 0;
            }
        }
    }


    public int updateShow(string query)
    {
        String connString = "Data Source=localhost;Initial Catalog=AquariumTicketing;Integrated Security=true;pooling = true";//ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        //  SqlConnection conn = new SqlConnection(connString);
        using (SqlConnection con = new SqlConnection(connString))
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                return row;
            }
            else
            {
                return 0;
            }
        }
    }
}