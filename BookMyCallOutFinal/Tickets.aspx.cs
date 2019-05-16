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

        }

        protected void bNewTicket(object sender, EventArgs e)
        {
            Response.Redirect("~/NewTickets.aspx");
        }
        protected void bAvtiveTicket(object sender, EventArgs e)
        {
            Response.Redirect("~/ActiveTickets.aspx");
        }
        protected void bTicketHistory(object sender, EventArgs e)
        {
            Response.Redirect("~/TicketHistory.aspx");
        }
        protected void bCancelTicket(object sender, EventArgs e)
        {
            Response.Redirect("~/CancelTicket.aspx");
        }
    }

}