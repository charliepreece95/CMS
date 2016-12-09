<%@ Page Title="Add New Staff" Language="C#" MasterPageFile="~/ProjectBank.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a href="StaffManagement.aspx"><div class="return">
        <span>&#8592;</span><p>Return</p>
    </div></a>
    <div class="container">
        <div class="AddForm">
            <input id="AddStaffID" type="text" value="17" />
            <label for="Staff#">Staff ID: </label>
            <br />
            <input type="text" value="" />
            <label for="FirstName">First Name</label>
            <br />
            <input type="text" value="" />
            <label for="LastName">Last Name</label>
            <br />
            <input type="text" value="" />
            <label for="TeleNum">Telephone Number</label>
            <br />
            <input type="text" value="" />
            <label for="Email">Email</label>
            <br />
            <select id="selectPosition" name="selectPosdition">
                <option value="" disabled selected>Select Position</option>
                <option value="Manager">Manager</option>
                <option value="Supervisor">Supervisor</option>
                <option value="Developer">Developer</option>
                <option value="Designer">Designer</option>
                <option value="Apprentice">Apprentice</option>
            </select>
            <label for="position">Position</label>
            <input type="submit" value="Add" />
        </div>
        <div class="AddResults">
            <table class="AddResultsTable">
                <tr class="tableHead">
                    <td>Staff#</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Tele Num</td>
                    <td>Email</td>
                    <td>Position</td>
                </tr>
                <tr>
                    <td>17</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
    </div>





</asp:Content>

