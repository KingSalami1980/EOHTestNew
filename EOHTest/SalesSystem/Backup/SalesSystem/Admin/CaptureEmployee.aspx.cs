using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesSystem
{
    public partial class CaptureEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRoleDropDown();

                if (Session["primarykey"] != null && Session["primarykey"].ToString() != string.Empty)
                {
                    hdfPrimaryKey.Value = Session["primarykey"].ToString();
                    LoadEmployee(Convert.ToInt32(hdfPrimaryKey.Value));
                }
                Session["primarykey"] = null;
            }
        }

        protected void LoadEmployee(int employeeID)
        {
            using (SalesSystem.DataClassesSalesDataContext context = new DataClassesSalesDataContext())
            {
                var result = (from emp in context.vw_Data_Employees
                              where emp.EmployeeID == employeeID
                              select emp).FirstOrDefault();

                hdfPrimaryKey.Value = result.EmployeeID.ToString();
                hdfCounter.Value = result.Counter.ToString();

                DropDownListRole.SelectedValue = result.RoleID.ToString();
                TextBoxEmployeeName.Text = result.EmployeeName;
                TextBoxEmployeeSurname.Text = result.EmployeeSurname;               
            }
        }

        protected void LoadRoleDropDown()
        {
            using (SalesSystem.DataClassesSalesDataContext context = new DataClassesSalesDataContext())
            {
                var role = (from rl in context.Roles
                            select rl).ToList();

                DropDownListRole.DataValueField = "RoleID";
                DropDownListRole.DataTextField = "RoleDescription";

                DropDownListRole.DataSource = role;
                DropDownListRole.DataBind();
            }
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/default.aspx");
        }

        protected void ButtonInsert_Click(object sender, EventArgs e)
        {
            using (SalesSystem.DataClassesSalesDataContext context = new DataClassesSalesDataContext())
            {
                if (string.IsNullOrEmpty(hdfPrimaryKey.Value))
                {
                    int EmployeeID = context.sp_Insert_Employee(Convert.ToInt32(DropDownListRole.SelectedValue), TextBoxEmployeeName.Text, TextBoxEmployeeSurname.Text);
                }
                else
                {
                    context.sp_Update_Employee(Convert.ToInt32(hdfPrimaryKey.Value), Convert.ToInt32(DropDownListRole.SelectedValue), TextBoxEmployeeName.Text, TextBoxEmployeeSurname.Text, Convert.ToInt32(hdfCounter.Value));
                }

                Response.Redirect("~/Default.aspx");
            }
        }
    }
}