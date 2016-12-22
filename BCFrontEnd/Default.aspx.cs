using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary; //My own library containing classes

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnPopulate_Click(object sender, EventArgs e)
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
        listCompanies.DataTextField = "CompanyName";
        //set the primary key value
        listCompanies.DataValueField = "CompanyID";
        //bind the data
        listCompanies.DataBind();
        //return the count of records in the list
        return MyCompany.Count;     
    }
}