using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3_s1
{
    public partial class Controller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string u = Request.Form["user"];
            string p = Request.Form["pass"];
            if (u == p)
            {
                Server.Transfer("Resources.aspx");
            }
            else
                Response.Redirect("Error.aspx");
        }
    }
}