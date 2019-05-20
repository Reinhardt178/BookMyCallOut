using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookMyCallOutFinal
{
    public partial class Tickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("NotLoggedIn.aspx");
            }
        }

        protected void NewTickets(object sender, EventArgs e)
        {
            Response.Redirect("NewTickets.aspx");
        }
        protected void ActiveTickets(object sender, EventArgs e)
        {
            Response.Redirect("ActiveTickets.aspx");  
        }
        protected void TicketHistory(object sender, EventArgs e)
        {
            Response.Redirect("TicketHistory.aspx");
        }
        protected void CancelTickets(object sender, EventArgs e)
        {
            Response.Redirect("CancelTicket.aspx");
        }
    }

}