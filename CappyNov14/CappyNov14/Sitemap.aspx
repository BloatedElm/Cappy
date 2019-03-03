<%@ Page Title="Sitemap" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="Sitemap.aspx.vb" Inherits="Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Site Map</h2>
     <ul class="siteMap">
   <li> <asp:HyperLink ID="HyperLink1" runat="server"><a href="Default.aspx">Home</a></asp:HyperLink></li>
    <li><asp:HyperLink ID="HyperLink2" runat="server"><a href="AboutUs.aspx">About Us</a></asp:HyperLink></li>
<li>
    <asp:HyperLink ID="HyperLink3" runat="server"><a href="ClubTeams.aspx">Club Teams</a></asp:HyperLink></li>
<li>
    <asp:HyperLink ID="HyperLink4" runat="server"><a href="ContactUs.aspx">Contact Us</a></asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink5" runat="server"><a href="Events.aspx">Events</a></asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink6" runat="server"><a href="RecTeams.aspx">Recreational Teams</a></asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink7" runat="server"><a href="Register.aspx">Register</a></asp:HyperLink></li>
        
        </ul>
    <h3>Coaches</h3>
    <ul class="siteMap">
        <li>
            <asp:HyperLink ID="HyperLink8" runat="server"><a href="coaches/EditTeam.aspx">Edit Team Stats</a></asp:HyperLink></li>
    <li>
            <asp:HyperLink ID="HyperLink9" runat="server"><a href="coaches/EditSchedule.aspx">Edit Schedule</a></asp:HyperLink></li>
         </ul>
    <h3>Players</h3>
    <ul class="siteMap">
        <li>
            <asp:HyperLink ID="HyperLink10" runat="server"><a href="players/AccountInfo.aspx">Account Info</a></asp:HyperLink></li>
   
         </ul>
</asp:Content>

