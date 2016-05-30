using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
/// <summary>
/// Summary description for RegisterService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class RegisterService : System.Web.Services.WebService
{
    Query query = new Query();
    string strQuery;
    public RegisterService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int saveRegistrationDetails(String firstName, String lastName, String userName, String password)
    {
        int isApprove = 0;
        strQuery = String.Format("INSERT INTO [dbo].[RegisterUser]     ([FirstName],[LastName],[Username],[Password],[IsApproved])   VALUES   ( \'{0}\',\'{1}\',\'{2}\',\'{3}\',{4})", firstName, lastName, userName, password, isApprove);
        int result = query.insertData(strQuery);
        return result;
    }

    [WebMethod]
    public List<User> fetchRegistrationDetails()
    {
        
       // var jsonSerialiser = new JavaScriptSerializer();
       
        List<User> userList = new List<User>();
        strQuery = "select ID,FirstName,LastName,Username,SubmittedOn from RegisterUser where isApproved = 0 order by [FirstName] asc";
      //  DataTable dt = new DataTable();
        userList = query.fetchUserRequests(strQuery);
       // var json = jsonSerialiser.Serialize(userList);
        return userList;
    }

    [WebMethod]
    public string saveShowDetails(String title, String desc,String date,String time, string price )
    {
        // int isDeleted = 0;
        string response = "Cannot Schedule Show!";
        strQuery = String.Format("INSERT INTO [dbo].[ShowDataTable]  ([Title],[Description],[Date],[time],[Price])  VALUES(\'{0}\',\'{1}\',\'{2}\',\'{3}\',\'{4}\')",title,desc,date,time,price);
        int result = query.insertData(strQuery);
        if(result > 0)
        {
            response = "Show is scheduled!";
        }
        return response;
    }

    [WebMethod]
    public List<Show> fetchShowDetails()
    {

        List<Show> showList = new List<Show>();
        strQuery = "select Id,title,description,date,time,price from ShowDataTable order by [title] asc";
        //  DataTable dt = new DataTable();
        showList = query.fetchShow(strQuery);
        // var json = jsonSerialiser.Serialize(userList);
        return showList;
    }

    [WebMethod]
    public string checkLoginDetails(String username,String password,String rememberMe)
    {
        String result = "Username or password is incorrect!";
        List<loginClass> userList = new List<loginClass>();
        strQuery = "select Username,Password from RegisterUser where isApproved = 1";
        userList = query.fetchUserLogin(strQuery);
        foreach(loginClass userL in userList)
        {
            if(userL.username.ToLower().Equals(username.ToLower()) && userL.password.Equals(password))
            {
                result = "Log In successfully!";
                //HttpContext.Current.Response.Redirect("Home.aspx");
                break;
            }
        }
        return result;
    }

    [WebMethod]
    public string deleteRequests(string ID)
    {
        int result = 0;
        strQuery = String.Format("Delete from RegisterUser where id={0}",Convert.ToInt32(ID));
        result = query.deleteReq(strQuery);
        return result.ToString();
    }

    [WebMethod]
    public string deleteShow(string ID)
    {
        int result = 0;
        strQuery = String.Format("Delete from ShowDataTable where id={0}", Convert.ToInt32(ID));
        result = query.deleteReq(strQuery);
        return result.ToString();
    }

    [WebMethod]
    public string approveRequests(string ID)
    {
        int result = 0;
        strQuery = String.Format("Update RegisterUser set isApproved=1 where id={0}", Convert.ToInt32(ID));
        result = query.approveReq(strQuery);
        return result.ToString();
    }

    [WebMethod]
    public List<Show> fetchEditShowDetails(string ID)
    {
        List<Show> showList = new List<Show>();
        strQuery = String.Format("select Id,title,description,date,time,price from ShowDataTable where id = {0}",Convert.ToInt32(ID));
        //  DataTable dt = new DataTable();
        showList = query.fetchShow(strQuery);
        // var json = jsonSerialiser.Serialize(userList);
        return showList;
    }

    [WebMethod]
    public string editShowDetails(String ID,String title, String desc, String date, String time, string price)
    {
        // int isDeleted = 0;
        String response = "Cannot update the show details";
        strQuery = String.Format("update ShowDataTable set title=\'{0}\',description=\'{1}\',date=\'{2}\',time=\'{3}\',price=\'{4}\' where id={5}", title,desc,date,time,price,Convert.ToInt32(ID));
        int result = query.updateShow(strQuery);
        if (result > 0)
        {
            response = "Show details are updated successfully!";
        }
        return response.ToUpper();
    }

    [WebMethod]
    public List<Show> scheduledShowsMorning(string date)
    {
        List<Show> showList = new List<Show>();
        strQuery = String.Format("select Id,title,description,date,time,price from ShowDataTable where date = \'{0}\' and time < '12:00'", date);
        //  DataTable dt = new DataTable();
        showList = query.fetchShow(strQuery);
        // var json = jsonSerialiser.Serialize(userList);
        return showList;
    }

    [WebMethod]
    public List<Show> scheduledShowsAfternoon(string date)
    {
        List<Show> showList = new List<Show>();
        strQuery = String.Format("select Id,title,description,date,time,price from ShowDataTable where date = \'{0}\' and time >= '12:00' and time < '18:00'", date);
        //  DataTable dt = new DataTable();
        showList = query.fetchShow(strQuery);
        // var json = jsonSerialiser.Serialize(userList);
        return showList;
    }
    [WebMethod]
    public List<Show> scheduledShowsEvening(string date)
    {
        List<Show> showList = new List<Show>();
        strQuery = String.Format("select Id,title,description,date,time,price from ShowDataTable where date = \'{0}\' and time >= '18:00'", date);
        //  DataTable dt = new DataTable();
        showList = query.fetchShow(strQuery);
        // var json = jsonSerialiser.Serialize(userList);
        return showList;
    }
}
