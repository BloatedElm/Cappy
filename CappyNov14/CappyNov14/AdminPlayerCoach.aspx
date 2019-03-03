<%@ Page Title="AdminPlayersCoach" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="AdminPlayerCoach.aspx.vb" Inherits="AdminPlayerCoach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Admin</h2>
  <ul class="siteMap"><li>  <a href="AdminPages/AdminPage.aspx">Administrator Page</a></li>
      
  </ul>
    
    <h2>Coach</h2>
  <ul class="siteMap"> <li>   <a href="coaches/EditSchedule.aspx">Edit Schedule</a></li>
  <li>  <a href="coaches/EditTeam.aspx">Edit Team</a></li></ul>
    <h2>Player</h2>
  <ul class="siteMap"><li>  <a href="players/AccountInfo.aspx">Account Information</a></li></ul>

</asp:Content>

