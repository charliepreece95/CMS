<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectBank.master" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="AddCompany" %>
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
             <input id="AddCompanyID" type="text" value="17" class="button" />           
             <br />
             <label for="CompanyName">Company Name</label>
             <input type="text" value="" class="button" />           
             <br />
             <label for="Address">Address</label>
             <input type="text" value="" class="button" />          
             <br />
             <label for="PostCode">Post Code</label> 
             <input type="text" value="" class="button" />          
             <br />
             <label for="TeleNum">TelePhone Number</label>
             <input type="text" value="" class="button" />            
             <br />
             <label for="Email">Email</label>
             <input type="text" value="" class="button" />           
             <br />
             <label for="Desc">Company Description</label>
             <input type="text" value="" class="button" />            
             <br/>
         </div>
 
         <%--Company table that holds an existing record --%>
         <div class="CompanyList">
             <h1 id="title1">Add Company</h1>
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
                     <td>17</td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                     <td></td>
                 </tr>
             </table>
         </div>       
     </div>
 
      <%--Buttons for redirection and click events using Javascript--%>
     <div class="CompanyOnClickButtons">
             <input type="submit" id="submitButton4Company" <%--Javascript--%> onclick="SubmitAddCompanyConfirm()" class="button" name="Submit" value="Submit" />
             <a href="CompanyManagement.aspx"><input type="button" id="exitButton4Company" class="button" name="Exit" value="Exit" /></a>
         </div>
 
 </asp:Content>


