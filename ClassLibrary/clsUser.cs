using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class clsUser
    {
        //private data members for the class
        private Int32 userNo;
        private string userName;
        private string firstName;
        private string surname;
        clsDataConnection myDB = new clsDataConnection();

        //public properties
        public Int32 UserNo
        {
            get
            {
                return userNo;
            }
            set
            {
                userNo = value;
            }
        }

        public string UserName
        {
            get
            {
                return userName;
            }
            set
            {
                userName = value;
            }
        }

        public string FirstName
        {
            get
            {
                return firstName;
            }
            set
            {
                firstName = value;
            }
        }

        public string Surname
        {
            get
            {
                return surname;
            }
            set
            {
                surname = value;
            }
        }

        ///public find method
        public Boolean Find(Int32 UserNo)
        {
            //re set the connection to the database
            myDB = new clsDataConnection();
            //pass the parameter to the stored procedure
            myDB.AddParameter("@UserNo", UserNo);
            //execute the stored procedure
            myDB.Execute("sproc_tblUser_FilterByUserNo");
            //check to see if we found anything
            if (myDB.Count == 1)
            {
                //set the private data members with the data from the database
                //private Int32 userNo;
                userNo = Convert.ToInt32(myDB.DataTable.Rows[0]["UserNo"]);
                //private string userName;
                userName = Convert.ToString(myDB.DataTable.Rows[0]["UserName"]);
                //private string firstName;
                firstName = Convert.ToString(myDB.DataTable.Rows[0]["FirstName"]);
                //private string surname;
                surname = Convert.ToString(myDB.DataTable.Rows[0]["Surname"]);
                //return success
                return true;
            }
            else //user no was invalid
            {
                //return that there was a problem
                return false;
            }
        }


    }
}
