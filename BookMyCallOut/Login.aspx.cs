using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookMyCallOut
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\Desktop\BookMyCallOut\BookMyCallOut\App_Data\BookMyCallOut.mdf;Integrated Security=True");
        SqlCommand cmd;

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Validate();
                if (IsValid)
                {
                    conn.Open();
                    string sql = "Select id from Users where Username= '" + txtUsername.Text + "' and Password = '" + txtPassword.Text + "'";
                    cmd = new SqlCommand(sql, conn);
                    int id = Convert.ToInt32(cmd.ExecuteScalar());
                    if (id > 0)
                    {

                        Session["UserID"] = id;
                        Session["Username"] = txtUsername.Text;
                        Response.Redirect("~/Home.aspx");
                    }
                    else
                    {
                        Label1.Visible = true;
                        Label1.Text = "Username or password is incorrect!";
                    }
                }
            }
            catch (SqlException err)
            {
                Response.Write(err.Message);
            }

        }
    }
}