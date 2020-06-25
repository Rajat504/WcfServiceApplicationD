using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Web.Services.Description;


namespace WcfServiceApplicationD
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class EmpoloyeeServices : IEmployeeServices
    {
        private SqlConnection connect = null;
       
        //private string con = string.Empty;
       
        public void Connection()
        {
            try
            {
                Console.WriteLine("Starting.\r\n");
                using (connect = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EmployeeDatabase;Integrated Security=True"))
                {
                    Console.WriteLine("Open connection...");
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        //public bool GetData(bool value)
        //{
        //    return bool.Format("You Entered:{0}", value);
        //}
        public bool AddEmployeeRecords(Employee emp)
        {
            try
            {
                using (connect = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EmployeeDatabase;Integrated Security=True"))
                {

                    SqlCommand cmd = new SqlCommand();

                    string Query = @"INSERT INTO Employee(EmpID,Name,Email,Phone,Gender,Password) values(@EmpID,@Name,@Email,@Phone,@Gender,@Password)";
                    cmd = new SqlCommand(Query, connect);
                    cmd.Parameters.AddWithValue("@EmpID", emp.EmpID);
                    cmd.Parameters.AddWithValue("@Name", emp.Name);
                    cmd.Parameters.AddWithValue("@Email", emp.Email);
                    cmd.Parameters.AddWithValue("@Phone", emp.Phone);
                    cmd.Parameters.AddWithValue("@Gender", emp.Gender);
                    cmd.Parameters.AddWithValue("@Password", emp.Password);
                    connect.Open();
                    int i = cmd.ExecuteNonQuery();
                    connect.Close();
                    if (i >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
            }
            catch (Exception e)
            {
               throw new Exception(e.Message);
            }
          
        }
        public DataSet GetEmployeeRecords()
        {
            
            DataSet ds = new DataSet();
            try
            {
                using (connect = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EmployeeDatabase;Integrated Security=True"))
                {
                    string Query = "Select * From Employee";
                    SqlDataAdapter sda = new SqlDataAdapter(Query, connect);
                    connect.Open();
                    sda.Fill(ds);
                    connect.Close();
                }
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error:" + fex);
            }
            return ds;
        }
        public bool DeleteRecords(Employee emp)
        {
            try
            {
                using (connect = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EmployeeDatabase;Integrated Security=True"))
                {
                    SqlCommand cmd = new SqlCommand();
                    string Query= @"delete from Employee where EmpID = @EmpID";
                    cmd = new SqlCommand(Query, connect);
                    cmd.Parameters.AddWithValue("@EmpID", emp.EmpID);
                    connect.Open();
                    int i = cmd.ExecuteNonQuery();
                    connect.Close();
                    if (i >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }

            }
              catch (Exception e)
            {
               throw new Exception(e.Message);
            }
           
            
        }
       
        public bool UpdateEmployeeRecords(Employee emp)
        {
            try
            {
                using (connect = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EmployeeDatabase;Integrated Security=True"))
                {
                    SqlCommand cmd = new SqlCommand();
                    string Query = @"Update Employee Set Name=@Name,Email=@Email,Phone=@Phone,Gender=@Gender,Password=@Password Where EmpID=@EmpID";
                    cmd = new SqlCommand(Query, connect);
                    cmd.Parameters.AddWithValue("@EmpID", emp.EmpID);
                    cmd.Parameters.AddWithValue("@Name", emp.Name);
                    cmd.Parameters.AddWithValue("@Email", emp.Email);
                    cmd.Parameters.AddWithValue("@Phone", emp.Phone);
                    cmd.Parameters.AddWithValue("@Gender", emp.Gender);
                    cmd.Parameters.AddWithValue("@Password", emp.Password);
                    connect.Open();
                    int i = cmd.ExecuteNonQuery();
                    connect.Close();
                    if (i >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }

                }
            }
            catch(Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public bool EmployeeLogin(Employee Emp)
        {
            try
            {

                using (connect = new SqlConnection("Data Source=(localdb)\\MSSQLLocalBD;Initial Catalog=EmployeeDatabase;Integrated Security=True"))
                {
                    SqlCommand cmd = new SqlCommand();
                    string Query = "SELECT * from Employee where Email = @Email and Password = @Password";
                    cmd = new SqlCommand(Query, connect);
                    cmd.Parameters.AddWithValue("@Email", Emp.Email);
                    cmd.Parameters.AddWithValue("@Password", Emp.Password);
                    connect.Open();
                    int i = cmd.ExecuteNonQuery();
                    connect.Close();
                    if (i >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;

                    }
                }
            }
            catch(Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
