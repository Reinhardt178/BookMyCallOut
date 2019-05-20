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
    public partial class NewTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mille\source\repos\BookMyCallOutFinal\BookMyCallOutFinal\App_Data\BookMy.mdf;Integrated Security=True");
        SqlCommand cmd;

        protected void Submits(object sender, EventArgs e)
        {
            Label1.Text = "test";
            Session["TicketLogged"] = DateTime.Now.ToString();
            Session["TicketID"] = (DateTime.Now.ToString("MMddyyyyHHmmss") + Session["UserID"]).ToString();
            Session["Description"] = problemDescription.Value ;
            string sql = "insert into Tickets(TicketID,UserId,TimeDateLogged,Status,Description,Priority) values (@TicketID,@UserId,@TimeDateLogged,@Status,@Description,@Priority)";
            cmd = new SqlCommand(sql, conn);
            //Session["TicketID"] = ((int)Session["TicketID"]);
            long ticketId = Convert.ToInt64(Session["TicketID"].ToString());
            int userID = Convert.ToInt32(Session["UserId"].ToString());
            cmd.Parameters.AddWithValue("@TicketID", ticketId);
            cmd.Parameters.AddWithValue("@UserID", userID);
            cmd.Parameters.AddWithValue("@TimeDateLogged", Session["TicketLogged"]);
            cmd.Parameters.AddWithValue("@Status", "Active");
            cmd.Parameters.AddWithValue("@Description", Session["Description"].ToString());
            cmd.Parameters.AddWithValue("@Priority", priority.Value);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("ActiveTickets.aspx");
                conn.Close();
            }
            catch (SqlException err)
            {
                Response.Write(err.Message);
            }
        }
    }
}