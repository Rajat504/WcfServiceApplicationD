using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceApplicationD;

namespace WcfClientApplicationD.Pagination
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                EmployeeID.Text = "";
            }
           
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            //adding employee
            if ((EmployeeID.Text != ""))
            {
                try
                {
                    //creating object and methods 
                    Employee employee = new Employee();
                    employee.EmpID = Convert.ToInt32(EmployeeID.Text);
                    EmpoloyeeServices client = new EmpoloyeeServices();
                    bool result = client.DeleteRecords(employee);
                    if (result)
                    {
                        EmployeeIdLabel.Text = "Employee  Data Deleted";
                    }
                }
                catch
                {
                    EmployeeIdLabel.Text = "Employee Records must be unique";
                }
            }
            else
            {
                EmployeeIdLabel.Text = "All Fields Are Mandatory";
                EmployeeIdLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void bntReset_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {

            EmployeeID.Text = "";
           

        }
    }
}