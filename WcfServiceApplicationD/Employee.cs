using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace WcfServiceApplicationD
{
    [DataContract]
    public class Employee
    {
        int empid = 0;
        string name = " ";
        string email = " ";
        string phone = " ";
        string gender = " ";
        string password = "";
        [DataMember]
        public int EmpID
        {
            get
            {
                return empid;
            }
            set
            {
                empid = value;
            }
        }
        [DataMember]
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
        [DataMember]
        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
        [DataMember]
        public string Phone
        {
            get
            {
                return phone;
            }
            set
            {
                phone = value;
            }
        }
        [DataMember]
        public string Gender
        {
            get
            {
                return gender;
            }
            set
            {
                gender = value;
            }
        }
        [DataMember]
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }

    }
}
