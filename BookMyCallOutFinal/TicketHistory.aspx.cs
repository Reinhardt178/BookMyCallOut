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
    public partial class TicketHistory : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\source\repos\BookMyCallOutFinal\BookMyCallOutFinal\App_Data\BookMy.mdf;Integrated Security=True");
        SqlDataAdapter adap;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string sql;
            if (Session["UserID"].ToString() == "1")
            {
                sql = "Select * from Tickets";
            }
            else
            {
                sql = "Select * from Tickets where UserID= '" + Session["UserID"].ToString()+ "'";
            }
            SqlCommand cmd = new SqlCommand(sql, conn);
            adap = new SqlDataAdapter();
            ds = new DataSet();


            cmd = new SqlCommand(sql, conn);
            adap.SelectCommand = cmd;
            adap.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
        }
    }
}