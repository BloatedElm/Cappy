<%@ Page Title="Administrator" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="AdminPage.aspx.vb" Inherits="AdminPages_AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
Welcome, Administrator.<br />
    Please Select what you would like to do:<br />
        <a href="UserRoles.aspx">Edit User Roles</a><br />
        <a href="AdminReports.aspx">View Reports</a>
</asp:Content>

