<%@ Page Title="Staff Management" Language="C#" MasterPageFile="~/ProjectBank.master" AutoEventWireup="true" CodeFile="StaffManagement.aspx.cs" Inherits="StaffManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a href="Default.aspx"><div class="return">
        <span>&#8592;</span><p>Return</p>
    </div></a>
    <div class="container">
           <div class="Options">
                <a href="AddStaff.aspx"><div>Add</div></a>
                <a href="EditStaff.aspx"><div>Edit</div></a>
                <a href="ArchiveStaff.aspx"><div>View Archived</div></a>

            <button id="ArchiveButton">Archive Selected</button>
            <select id="FilterBy" name="FilterBy">
                <option value="" disabled selected>Filter By...</option>
                <option value="Name">Name</option>
                <option value="Position">Position</option>
            </select>
            <input type="submit" value="Filter" />
          </div>

        <div class="StaffList">
            <input id="FuzSearch" type="text" name="Search" placeholder="Search Staff Member" />
            <input type="submit" name="Search" value="Search" />
            <table class="allStaff">
                <tr id="tableHead">
                    <td>Staff#</td>
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Tele Num</td>
                    <td>Email</td>
                    <td>Position</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>James</td>
                    <td>Blake</td>
                    <td>0783535000</td>
                    <td>james@email.com</td>
                    <td>Manager</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Susan</td>
                    <td>Smith</td>
                    <td>045345360</td>
                    <td>susan@email.com</td>
                    <td>Worker</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Tom</td>
                    <td>Smith</td>
                    <td>12345678901</td>
                    <td>tom@email.com</td>
                    <td>Worker</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Paul</td>
                    <td>Smith</td>
                    <td>072552352352</td>
                    <td>paul@email.com</td>
                    <td>Manager</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>Cath</td>
                    <td>Smith</td>
                    <td>07253456464</td>
                    <td>cath@email.com</td>
                    <td>Apprentice</td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>

