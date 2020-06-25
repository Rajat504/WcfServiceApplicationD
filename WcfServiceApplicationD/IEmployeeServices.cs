using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace WcfServiceApplicationD
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IEmployeeServices
    {
        [OperationContract]
        bool AddEmployeeRecords(Employee emp);
        [OperationContract]
        DataSet GetEmployeeRecords();
        [OperationContract]
        bool DeleteRecords(Employee emp);
        [OperationContract]
        bool UpdateEmployeeRecords(Employee emp);


    }
    //[DataContract]
    //public class Employee
    //{
    //    int empid = 0;
    //    string name = " ";
    //    string email = " ";
    //    string phone = " ";
    //    string gender = " ";
    //    string password = "";
    //    [DataMember]
    //    public int EmpID
    //    {
    //        get
    //        {
    //            return empid;
    //        }
    //        set
    //        {
    //            empid = value;   
    //        }
    //    }
    //    [DataMember]
    //    public string Name
    //    {
    //        get
    //        {
    //            return name;
    //        }
    //        set
    //        {
    //            name = value;
    //        }
    //    }
    //    [DataMember]
    //    public string Email
    //    {
    //        get
    //        {
    //            return email;
    //        }
    //        set
    //        {
    //            email = value;
    //        }
    //    }
    //    [DataMember]
    //    public string Phone
    //    {
    //        get
    //        {
    //            return phone;
    //        }
    //        set
    //        {
    //            phone = value;
    //        }
    //    }
    //    [DataMember]
    //    public string Gender
    //    {
    //        get
    //        {
    //            return gender;
    //        }
    //        set
    //        {
    //            gender = value;
    //        }
    //    }
    //    [DataMember]
    //    public string Password
    //    {
    //        get
    //        {
    //            return password;
    //        }
    //        set
    //        {
    //            password = value;
    //        }
    //    }

    //}
}
