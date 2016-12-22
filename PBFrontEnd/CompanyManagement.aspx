<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectBank.master" AutoEventWireup="true" CodeFile="CompanyManagement.aspx.cs" Inherits="CompanyManagement" %>       
    <%--Master Page Link--%>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <%--Link back to CompanyMangement page--%>
     <a href="Default.aspx"><div class="return">
        <span>&#8592;</span><p>Return</p>
    </div></a>

    <%--CompanyManagement Page where you use the buttons to navigate to other pages--%>
    <div class="container4Company">
           <div class="Options4Company">
                <a href="AddCompany.aspx" class="button"><div>Add</div></a>
                <a href="EditCompany.aspx" class="button"><div>Edit</div></a>
                <a href="ViewCompany.aspx" class="button"><div>View Company</div></a>
                <button id="ArchiveButton" <%--Javascript--%> onclick="ArchiveCompanyConfirm()" class="button">Archive</button>
                <a href="ViewArchivedCompany.aspx" class="button"><div>View Archived</div></a>
          </div>

         <%--Company table that holds existing records --%>
        <div class="CompanyList">
            <input id="FuzSearch4Company" class="button" type="text" name="Search" placeholder="Search Here..." />
                <input type="submit" id="searchButton4Company" class="button" name="Search" value="GO" />
                    <h1 id="title">Company Management</h1>
                        <table class="allCompanies">
                             <tr class="tableHead4Company">
                                <%--Table headings--%>
                                <td>CompanyID</td>
                                <td>Company Name</td>
                                <td>Address</td>
                                <td>Post Code</td>
                                <td>Tele Num</td>
                                <td>Email</td>
                                <td>Description</td>
                            </tr>
                            <tr>
                                <%--Example of data entrys--%>
                                <td>1</td>
                                <td>MJ Constructions</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>2</td>
                                <td>London Recruit</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>3</td>
                                <td>London Recruit</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>4</td>
                                <td>MJ Constructions</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>5</td>
                                <td>MJ Constructions</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>6</td>
                                <td>London Recruit</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>7</td>
                                <td>French Connection</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>8</td>
                                <td>MJ Constructions</td>
                                <td>47 Some Address Road</td>
                                <td>LE2 FFS</td>
                                <td>c07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                            </tr>
                            <tr>
                                <%--Example of a data entry--%>
                                <td>9</td>
                                <td>MJ Constructions</td>
                                <td>47 Some Address Roadh</td>
                                <td>LE2 FFS</td>
                                <td>07123456789</td>
                                <td>JohnSmith@hotmail.co.uk</td>
                                <td>...</td>
                           </tr>
                     </table>
                 </div>
            </div>
</asp:Content>

