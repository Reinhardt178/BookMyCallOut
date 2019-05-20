using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookMyCallOutFinal
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\source\repos\BookMyCallOutFinal\BookMyCallOutFinal\App_Data\BookMy.mdf;Integrated Security=True");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Registrationbtn(object sender, EventArgs e)
        {
            if (Password.Value.ToString() == rePassword.Value.ToString())
            {
                string sql = "insert into Users(UserName,Email,PassWord) values (@UserName,@Email,@PassWord)";
                cmd = new SqlCommand(sql, conn);

                cmd.Parameters.AddWithValue("@UserName", Username.Value.ToString());
                cmd.Parameters.AddWithValue("@Email", Email.Value.ToString());
                cmd.Parameters.AddWithValue("@PassWord", Password.Value.ToString());

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Home.aspx");
                    conn.Close();
                }
                catch (SqlException err)
                {
                    Response.Write(err.Message);
                }
            }
            else
            {
                Label1.Text = "Passwords do not match!!!";
            }

        }
    }

}