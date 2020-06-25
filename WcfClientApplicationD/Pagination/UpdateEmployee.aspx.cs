using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceApplicationD;

namespace WcfClientApplicationD.Pagination
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                EmployeeID.Text = "";
                EmployeeEmail.Text = "";
                Phone.Text = "";
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if ((EmployeeID.Text !="") || (EmployeeEmail.Text !="") || (Phone.Text != "") || (EmployeeName.Text!="")||(Gender.Text!="")||(Password.Text!=""))
            {
                try
                {
                    //creating object and method
                    Employee employee = new Employee();
                    employee.EmpID = Convert.ToInt32(EmployeeID.Text);
                    employee.Name = EmployeeName.Text;
                    employee.Email = EmployeeEmail.Text;
                    employee.Phone = Phone.Text;
                    employee.Gender = Gender.Text;
                    employee.Password = Password.Text;
                    EmpoloyeeServices client = new EmpoloyeeServices();
                    bool result = client.UpdateEmployeeRecords(employee);
                    if (result)
                    {
                        EmployeeIdLabel.Text = "Employee Data Updated";
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
            EmployeeEmail.Text = "";
            Phone.Text = "";
            

        }


    }
}