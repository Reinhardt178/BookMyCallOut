using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookMyCallOut
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BookMyCallOut menu = new BookMyCallOut();
            Label1.Text = "Welcome to BookMyCallOut. Please login to book a New Ticket!!";
            HyperLink1.Visible = false;
            HyperLink2.Visible = false;
            HyperLink3.Visible = false;
            HyperLink4.Visible = false;
            if (Session["UserID"] != null)
            {
                Button1.Visible = false;
                
                Label1.Text = "Welcome " + Session["Username"] + " feel free to book a New Ticket Now";
                HyperLink1.Visible = true;
                HyperLink2.Visible = true;
                HyperLink3.Visible = true;
                HyperLink4.Visible = true;
                HyperLink5.Visible = false;
                

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}