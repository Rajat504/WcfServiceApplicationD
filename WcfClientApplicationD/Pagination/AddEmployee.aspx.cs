using System;
using System.Web.UI;
using WcfClientApplicationD.ServiceReference;
using WcfServiceApplicationD;


namespace WcfClientApplicationD.Pagination
{
    public partial class AddEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                EmployeeID.Text = "";
                EmployeeName.Text = "";
                EmployeeEmail.Text = "";
                Phone.Text = "";
                Gender.Text = "";
                Password.Text = "";
            }

        }
        protected void btnSave_Click(object sender, EventArgs e) 
        {
            //adding employee
            if ((EmployeeID.Text != "") || (EmployeeName.Text != "") || (EmployeeEmail.Text != "") || (Phone.Text != "") || (Gender.Text != ""))
            {
                try
                {
                    //creating object and methods 
                    Employee employee = new Employee();
                    employee.EmpID = Convert.ToInt32(EmployeeID.Text);
                    employee.Name = EmployeeName.Text;
                    employee.Phone = Phone.Text;
                    employee.Email = EmployeeEmail.Text;
                    employee.Gender = Gender.Text;
                    employee.Password = Password.Text;
                    EmpoloyeeServices client = new EmpoloyeeServices();
                    bool result=client.AddEmployeeRecords(employee);
                    if (result)
                    {
                        EmployeeIdLabel.Text = "Employee Added";
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
            EmployeeName.Text = "";
            EmployeeEmail.Text = "";
            Phone.Text = "";
            Gender.Text = "";

        }

      
    }
}
