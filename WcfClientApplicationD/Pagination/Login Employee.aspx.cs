using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceApplicationD;

namespace WcfClientApplicationD.Pagination
{
    public partial class Login_Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Email.Text = "";
                Password.Text = "";
               
            }

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if((Email.Text!="") || (Password.Text != ""))
            {
                try
                {
                    //creating object and method
                    Employee employee = new Employee();
                    employee.EmpID = Convert.ToInt32(Email.Text);
                    employee.Password = Password.Text;
                    EmpoloyeeServices client = new EmpoloyeeServices();
                    bool result = client.EmployeeLogin(employee);
                    if (result)
                    {
                        EmailLabel.Text = "Employee  login Added";
                    }
                }
                catch
                {
                    EmailLabel.Text = "Employee Records must be unique";
                }
            }
            else
            {
                EmailLabel.Text = "All Fields Are Mandatory";
                EmailLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void bntReset_Click(object sender, EventArgs e)
        {
            ClearForm();
        }

        private void ClearForm()
        {

            Email.Text = "";
            Password.Text="";

        }

    }
}