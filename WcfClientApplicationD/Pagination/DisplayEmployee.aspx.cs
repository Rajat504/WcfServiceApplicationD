using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WcfServiceApplicationD;

 namespace WcfClientApplicationD.Pagination
{
    public partial class DisplayEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                EmpoloyeeServices client = new EmpoloyeeServices();
                DataSet ds = new DataSet();
                ds = client.GetEmployeeRecords();
                grdEmployees.DataSource = ds;
                grdEmployees.DataBind();
            }
        }
        
    }
}