using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary
{
    public class clsCompanyCollection
    {
        //private data member that stores the count of records found 
        private Int32 RecordCount;
        //create a private list data member to store the data from the database
        private List<clsCompany> CompanyList = new List<clsCompany>();
        //private data member to connect to the database 
        private clsDataConnection MyDB = new clsDataConnection();

        //public property returning the count of records 
        public Int32 Count
        {
            get
            {
                //return the record count
                return RecordCount;
            }
        }

        //public list of companies
        public List<clsCompany> ListCompany
        {
            get
            {
                //return the list of companies
                return CompanyList;       
            }
        }

        public void FindAllCompanies()
        {
            //re-set the database connection 
            MyDB = new clsDataConnection();
            //variable to store the index
            Int32 Index = 0;
            //variable to store the company number of the count record 
            Int32 CompanyID;
            //variable to flag that the company was found
            Boolean CompanyFound;
            //execute the stored procedure
            MyDB.Execute("Sproc_tblCompany_SelectAll");
            //get the count of records
            RecordCount = MyDB.Count;

            //while there are stil records to count
            while (Index < MyDB.Count)
            {
                //create an instance of the company class
                clsCompany NewCompany = new clsCompany();
                //get the company number from the database
                CompanyID = Convert.ToInt32(MyDB.DataTable.Rows[Index]["CompanyID"]);
                //find the company by invoking the find method
                CompanyFound = NewCompany.Find(CompanyID);

                if (CompanyFound == true)
                {
                    //add the user to the list
                    CompanyList.Add(NewCompany);
                }
                //increment the index
                Index++;
            }
        }
    }
}
