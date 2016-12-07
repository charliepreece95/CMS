<%@ Page Title="" Language="C#" MasterPageFile="~/Business_Card_Prototype.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:ListBox ID="listCompanies" runat="server" Height="82px" Width="197px"></asp:ListBox>
    <br />
    <br />
    <asp:Button ID="btnPopulate" runat="server" OnClick="btnPopulate_Click" Text="Populate" />
    <br />
    <br />
    <asp:Label ID="lblDisplay" runat="server" Text="error"></asp:Label>
    <br />
</asp:Content>