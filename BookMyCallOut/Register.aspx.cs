using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BookMyCallOut
{
    public partial class Register : System.Web.UI.Page
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
                conn.Open();
                string sql = "insert into Users values(@UserName,@Email,@PassWord)";
                cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("UserName", TextBox1.Text);
                cmd.Parameters.AddWithValue("Email", TextBox2.Text);
                cmd.Parameters.AddWithValue("PassWord", TextBox3.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/Login.aspx");
            }
            catch(SqlException err)
            {
                Response.Write("Failed");
            }
        }
    }
}