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
    public partial class NewTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (Session["UserID"] != null)
            {
                //Panel1.Visible = true;
                //Label1.Text = "Welcome " + Session["UserID"] + " feel free to book a New Ticket Now";
                

            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\Desktop\BookMyCallOut\BookMyCallOut\App_Data\BookMyCallOut.mdf;Integrated Security=True");
        SqlCommand cmd;

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Session["TicketLogged"] = DateTime.Now.ToString();
                Session["TicketID"] = (DateTime.Now.ToString("MMddyyyyHHmmss") + Session["UserID"]).ToString();
                
                conn.Open();
                string sql1 = "select Id from Users where UserName= '" + Session["UserID"] + "'";
                cmd = new SqlCommand(sql1, conn);

                Label2.Text = Session["TicketID"].ToString();
                Label3.Text = DateTime.Now.ToString("MM/dd/yyyy");
                Session["Description"] = TextBox1.Text;
                Label4.Text = TextBox1.Text;
                Label1.Text = DropDownList1.SelectedItem.ToString();


                Panel1.Visible = true;
                conn.Close();
                
            }
            catch(SqlException err)
            {
                Response.Redirect(err.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = "insert into Tickets(TicketID,UserId,TimeDateLogged,Description) values (@TicketID,@UserId,@TimeDateLogged,@Description)";
            cmd = new SqlCommand(sql, conn);
            //Session["TicketID"] = ((int)Session["TicketID"]);
            long ticketId = Convert.ToInt64(Session["TicketID"].ToString());
            int userID = Convert.ToInt32(Session["UserID"].ToString());
            cmd.Parameters.AddWithValue("@TicketID", ticketId);
            cmd.Parameters.AddWithValue("@UserId", userID);
            cmd.Parameters.AddWithValue("@TimeDateLogged", Session["TicketLogged"]);
            cmd.Parameters.AddWithValue("@Description", Session["Description"].ToString());
            try
            {

                conn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "succesful";
                Response.Redirect("~/ActiveTickets.aspx");
            }
            catch(SqlException err)
            {
                Response.Redirect(err.Message);
            }
        }
    }
}