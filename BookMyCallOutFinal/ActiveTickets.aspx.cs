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
    public partial class AvtiveTickets : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\source\repos\BookMyCallOutFinal\BookMYCallOutFinal\App_Data\BookMy.mdf;Integrated Security=True");
        SqlDataAdapter adap;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["UserID"]);
            if ( id == 1)
            {
                conn.Open();
                string sql = "select TicketID, TimeDateLogged, Description, Priority from Tickets where Status ='Active'";
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
            else
            {
                conn.Open();
                string sql = "select TicketID, TimeDateLogged, Description, Priority from Tickets where UserID ='" + Session["UserID"].ToString() + "' and Status ='Active'";
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Panel1.Visible = true;
           // GridViewRow gr = GridView1.SelectedRow;
          //  Session["SelectedTickID"] = gr.Cells[1].Text;
           // string sql = "Delete * From Tickets Where TicketID = '" + Session["SelectedTickID"].ToString() + "'";
           // Label1.Text = "Selected ticket ID: " + Session["SelectedTickID"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            conn.Open();
            sql = "DELETE FROM Tickets WHERE TicketID = '" + Label2.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);

            adap.DeleteCommand = cmd;
            adap.DeleteCommand.ExecuteNonQuery();

            sql = "select TicketID, TimeDateLogged, Description, Priority from Tickets where UserID ='" + Session["UserID"].ToString() + "' and Status ='Active'";
            adap = new SqlDataAdapter();
            ds = new DataSet();


            cmd = new SqlCommand(sql, conn);
            adap.SelectCommand = cmd;
            adap.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            conn.Close();
            this.Response.Redirect("ActiveTickets.aspx");



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           Panel1.Visible = true;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text != null)
            {
                string sql;
                if (Session["UserID"].ToString() == "1")
                {
                    sql = "Select TicketID From Tickets where TicketID like '" + TextBox1.Text + "' or Description like '" + TextBox1.Text + "' or Priority like '" + TextBox1.Text + "'";
                }
                else
                {
                    sql = "Select TicketID From Tickets where UserID = '" + Session["UserID"].ToString() + "' and (Description = '" + TextBox1.Text + "' or Priority like '" + TextBox1.Text + "')";
                }
                conn.Open();
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd = new SqlCommand(sql, conn);
                double id = Convert.ToInt64(cmd.ExecuteScalar());
                if (id <= 0)
                {
                    Label3.Text = "Error";
                    Label2.Text = "ID not found";
                }
                else
                {
                    Label3.Text = "Delete ticket with ID: ";
                    Label2.Text = id.ToString();
                    Button1.Visible = true;
                    Button2.Visible = false;
                    
                }
            }
        }
    }
}