using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesSystem
{
    public partial class _Default : System.Web.UI.Page
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

        protected void GridViewEmployees_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["primarykey"] = GridViewEmployees.SelectedDataKey.Value.ToString();
            Response.Redirect("~/Admin/CaptureEmployee.aspx");
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            using (SalesSystem.DataClassesSalesDataContext context = new DataClassesSalesDataContext())
            {
                var result = (from searchRes in context.vw_Custom_SelectEmployeeRoles
                              where (searchRes.RoleRate.ToString().Contains(TextBoxSearch.Text)) || (searchRes.EmployeeName.Contains(TextBoxSearch.Text)) || (searchRes.EmployeeSurname.Contains(TextBoxSearch.Text)) || (searchRes.RoleDescription.Contains(TextBoxSearch.Text))
                              select new { searchRes.EmployeeID, searchRes.EmployeeName, searchRes.EmployeeSurname, searchRes.RoleDescription, searchRes.RoleRate });

                GridViewEmployees.DataSource = result;
                GridViewEmployees.DataBind();
                              
            }
        }
    }
}
