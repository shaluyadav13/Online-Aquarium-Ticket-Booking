using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using AquariumSite;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        //string username = UserName.Text;
        //string pwd = Password.Text;
        //string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        //SqlConnection conn = new SqlConnection(connStr);
        //conn.Open();
        //SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[registerUser] ([username],[password],[isApproved])  VALUES("+ "'" + username + "'" + ",'"+ pwd + "',0)", conn);
        //int row = cmd.ExecuteNonQuery();
        //if (row > 0)
        //{
        //    Response.Redirect("Login.aspx");
        //}
    }
}