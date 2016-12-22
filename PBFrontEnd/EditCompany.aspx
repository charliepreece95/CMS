<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectBank.master" AutoEventWireup="true" CodeFile="EditCompany.aspx.cs" Inherits="EditCompany" %>
    <%--Master Page Link--%>
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <%--Link back to CompanyMangement page--%>
     <a href="CompanyManagement.aspx"><div class="return">
        <span>&#8592;</span><p>Return</p>
    </div></a>

     <%--Input text data fields--%>
    <div class="container4Company">
        <div class="Options4Company">
            <label for="Company#">Company ID</label>
            <input id="AddCompanyID" type="text" value="1" class="button" />           
            <br />
            <label for="CompanyName">Company Name</label>
            <input type="text" value="MJ Constructions" class="button" />           
            <br />
            <label for="Address">Address</label>
            <input type="text" value="47 Some Address Road" class="button" />          
            <br />
            <label for="PostCode">Post Code</label> 
            <input type="text" value="LE2 FFS" class="button" />          
            <br />
            <label for="TeleNum">TelePhone Number</label>
            <input type="text" value="07123456789" class="button" />            
            <br />
            <label for="Email">Email</label>
            <input type="text" value="JohnSmith@hotmail.co.uk" class="button" />           
            <br />
            <label for="Desc">Company Description</label>
            <input type="text" value="..." class="button" />            
            <br/>
        </div>

        <%--Company table that holds an existing record --%>
        <div class="CompanyList">
            <h1 id="title1">Edit Company</h1>
            <table class="AddResultsTable4Company">             
                <tr class="tableHead4Company">
                    <%--Table headings--%>
                    <td>CompanyID</td>
                    <td>Company Name</td>
                    <td>Address</td>
                    <td>Postcode</td>
                    <td>Tele Num</td>
                    <td>Email</td>
                    <td>Description</td>
                </tr>
                <tr>
                    <%--Example of a data entry--%>
                    <td>1</td>
                    <td>MJ Constructions</td>
                    <td>47 Some Address Road</td>
                    <td>LE2 FFS</td>
                    <td>07123456789</td>
                    <td>JohnSmith@hotmail.co.uk</td>
                    <td>...</td>
                </tr>
            </table>
        </div>       
    </div>
    
    <%--Buttons for redirection and click events using Javascript --%>
    <div class="CompanyOnClickButtons">
            <input type="submit" id="submitButton4Company" <%--Javascript--%> onclick="SubmitEditCompanyConfirm()" class="button" name="Submit" value="Submit" />
             <a href="CompanyManagement.aspx"><input type="button" id="exitButton4Company" class="button" name="Exit" value="Exit" /></a>
        </div>

</asp:Content>

