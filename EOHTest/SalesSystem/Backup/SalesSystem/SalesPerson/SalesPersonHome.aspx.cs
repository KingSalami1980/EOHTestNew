using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesSystem.SalesPerson
{
    public partial class SalesPersonHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEmployeesGrid();
        }

        protected void LoadEmployeesGrid()
        {
            using (SalesSystem.DataClassesSalesDataContext context = new DataClassesSalesDataContext())
            {
                var employeeRole = (from empRol in context.vw_Custom_SelectEmployeeRoles
                                    select empRol).ToList();

                GridViewEmployees.DataSource = employeeRole;
                GridViewEmployees.DataBind();
            }
        }
    }
}