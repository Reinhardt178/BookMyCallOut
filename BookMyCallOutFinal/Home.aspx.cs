using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BookMyCallOutFinal
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Label1.Text = "Welcome to BookMyCallOut Home page. Please login to continue using this service";
            if (Session["UserID"] != null)
            {
                loginBtn2.Style.Add("visibility", "hidden");
                Label1.Text = "Welcome " + Session["Username"].ToString() + " to BookMyCallOut. You will now be able to use the Tickets Service!!   ";
            }
            else
            {
                Label1.Text = "Welcome to BookMyCallOut Home page. Please login to continue using this service";
            }
            
        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\source\repos\BookMyCallOutFinal\BookMyCallOutFinal\App_Data\BookMy.mdf;Integrated Security=True");
        SqlCommand cmd;
        
        protected void Logout1(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("Home.aspx");
        }
        protected void BtnLogin(object sender, EventArgs e)
        {
            int id1;
            string user = textUser.Value.ToString(); ;
            string pass = textPass.Value.ToString();
            try
            {
                conn.Open();
                string sql = "Select Id from Users where UserName = '" + user + "' and PassWord ='" + pass + "'";
                cmd = new SqlCommand(sql, conn);
                int id = Convert.ToInt32(cmd.ExecuteScalar());
                id1 = id;
                if (id > 0)
                {

                   Session["UserID"] = id;
                   Session["Username"] = user;
                    //Response.Redirect(Request.Url.ToString());
                    Response.Redirect("Home.aspx");
                    //Label1.Text = "Welcome " + Session["Username"].ToString() + " to BookMyCallOut. You will now be able to use the Tickets Service!!   ";
                }
                else
                {
                    Label1.Text = "Login failled, Username or Password is incorrect!!!";
                    //errorLabel.InnerText = "Username or password is incorrect!";
                    textPass.Value = null;
                    textUser.Value = null;
                }
                
            }
            catch (SqlException err)
            
            {
                
                Response.Write(err.Message);
            }
        }
    }
}