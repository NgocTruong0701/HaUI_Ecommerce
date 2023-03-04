using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ThemDS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            if(e.Exception != null)
            {
                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
                ErrorMessage.Text = "Co loi say ra " + e.Exception.Message;
            }
            else
            {
                ErrorMessage.Text = "";
            }
        }

        protected void MaKhoaTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}