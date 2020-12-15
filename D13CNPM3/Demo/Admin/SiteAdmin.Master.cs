using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo.Admin
{
    public partial class SiteAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["username"] == "")
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}