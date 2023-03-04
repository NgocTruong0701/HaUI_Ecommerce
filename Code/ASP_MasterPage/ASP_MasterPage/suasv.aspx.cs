using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_MasterPage
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if(e.Exception != null)
            {
                e.ExceptionHandled = true;
                Response.Write("<script>alert('Co loi say ra" + e.Exception.Message + "')</script>");
            }
            else
            {
                Response.Write("<script>alert('Sua thanh cong')");
            }
        }
    }
}