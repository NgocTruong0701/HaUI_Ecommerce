using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T3_s1
{
    public partial class Input2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = txtName.Text;
            lbl2.Text = radGender.Text;
            lbl3.Text = ddlAddress.Text;

            // lbl4.Text = chkSubject.Text;
            string temp = "";
            foreach (ListItem item in chkSubject.Items)
            {
                if (item.Selected)
                {
                    temp += item.Text + " ";
                }
            }
            lbl4.Text = temp;

            //lbl1.Text = Request.Form["txtname"];
            //lbl2.Text = Request.Form["radGender"];
            //lbl3.Text = Request.Form["ddlAddress"];
            //lbl4.Text = Request.Form["chkSubject"];

        }
    }
}