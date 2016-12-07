using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ClassLibrary; //My own library

namespace BCBackOffice
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void btnPopulate_Click(object sender, EventArgs e)
        {
            //call the DisplayCompanies function
            lblDisplay.Text = DisplayCompanies() + " Found";
        }

        Int32 DisplayCompanies()
        {
            //create an instance of the company collection 
            clsCompanyCollection MyCompany = new clsCompanyCollection();
            //find all the companies
            MyCompany.FindAllCompanies();
            //set the data source of the list box
            listCompanies.DataSource = MyCompany.ListCompany;
            //set the text to be displayed 
            listCompanies.DisplayMember = "CompanyName";
            //set the primary key value
            listCompanies.ValueMember = "CompanyID";
            //return the count of records in the list
            return MyCompany.Count;
        }
    }
}
