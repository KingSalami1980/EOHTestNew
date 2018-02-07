using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesSystem
{
    public partial class CaptureRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/default.aspx");
        }

        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            using (SalesSystem.DataClassesSalesDataContext context = new DataClassesSalesDataContext())
            {
                int roleID = context.sp_Insert_Role(TextBoxRoleDescription.Text, Convert.ToDecimal(TextBoxRoleRate.Text));

                Response.Redirect("~/Default.aspx");
            }
        }
    }
}