using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class clsCompany
    {
        //private data members for the class 
        private Int32 companyID;
        private string companyName;
        private string address;
        private string postcode;
        private decimal teleNum;
        private string email;
        private string desc;
        clsDataConnection MyDB = new clsDataConnection();

        //public properties
        public Int32 CompanyID
        {
            get
            {
                return companyID;
            }
            set
            {
                companyID = value;
            }
        }

        public string CompanyName
        {
            get
            {
                return companyName;
            }
            set
            {
                companyName = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }
            set
            {
                address = value;
            }
        }

        public string PostCode
        {
            get
            {
                return postcode;
            }
            set
            {
                postcode = value;
            }
        }

        public decimal TeleNum
        {
            get
            {
                return teleNum;
            }
            set
            {
                teleNum = value;
            }
        }

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

        public string Desc
        {
            get
            {
                return desc;
            }
            set
            {
                desc = value;
            }
        }

        public Boolean Find(Int32 CompanyID)
        {
            //re-set the connection to the database
            MyDB = new clsDataConnection();
            //pass the parameter to the stored procedure
            MyDB.AddParameter("@CompanyID", CompanyID);
            //execute the stored procedure
            MyDB.Execute("Sproc_tblCompany_FilterByCompanyID");

            //check to see if we found anything
            if (MyDB.Count == 1)
            {
                //set the private data members with the data from the database
                //private Int32 CompanyID
                companyID = Convert.ToInt32(MyDB.DataTable.Rows[0]["CompanyID"]);
                //private string CompanyName
                companyName = Convert.ToString(MyDB.DataTable.Rows[0]["CompanyName"]);
                //private string Address
                address = Convert.ToString(MyDB.DataTable.Rows[0]["Address"]);
                //private string PostCode
                postcode = Convert.ToString(MyDB.DataTable.Rows[0]["PostCode"]);
                //private Int32 TeleNum
                teleNum = Convert.ToDecimal(MyDB.DataTable.Rows[0]["TeleNum"]);
                //private string Email
                email = Convert.ToString(MyDB.DataTable.Rows[0]["Email"]);
                //private string Desc
                desc = Convert.ToString(MyDB.DataTable.Rows[0]["Desc"]);
                //return success
                return true;
            }
            else //CompanyID was invalid
            {
                //return that there was a problem
                return false;
            }
        }
    }
}
