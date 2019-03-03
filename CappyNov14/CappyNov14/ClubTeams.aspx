<%@ Page Title="Club Teams" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="ClubTeams.aspx.vb" Inherits="ClubTeams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <img alt="logo" class="kulogo" longdesc="logo" src="images/kennesaw%20united%20logo.jpg" />  
   </div><h2>𝓒𝓵𝓾𝓫 𝓣𝓮𝓪𝓶𝓼</h2> 
        Age Group:
            
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="AgeGroup" DataValueField="AgeGroup" AutoPostBack="True"></asp:DropDownList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetClubAgeGroups" TypeName="UsersTableAdapters.ClubTeamsDDLTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="AgeGroup" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TeamId" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
            <asp:BoundField DataField="FirstName" HeaderText="Coach" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Name" SortExpression="LastName" />
            <asp:BoundField DataField="League" HeaderText="League" SortExpression="League" />
            <asp:BoundField DataField="Season" HeaderText="Season" SortExpression="Season" />
            <asp:HyperLinkField DataNavigateUrlFields="TeamId" DataNavigateUrlFormatString="TeamRoster.aspx?TeamId={0}" HeaderText="Team Roster" Text="Roster" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetClubTeamsbyAgeGroup" TypeName="UsersTableAdapters.TeamsGridviewTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="AgeGroup" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

        <br />
    <h3>Schedule</h3>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Home" SortExpression="TeamName" />
            <asp:BoundField DataField="Association" HeaderText="Club" SortExpression="Association" />
            <asp:BoundField DataField="HTeamGoals" HeaderText="Goals" SortExpression="HTeamGoals" />
            <asp:BoundField DataField="TeamName1" HeaderText="Away" SortExpression="TeamName1" />
            <asp:BoundField DataField="Association1" HeaderText="Club" SortExpression="Association1" />
            <asp:BoundField DataField="ATeamGoals" HeaderText="Goals" SortExpression="ATeamGoals" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="FieldName" HeaderText="Field" SortExpression="FieldName" />
            <asp:BoundField DataField="ComplexName" HeaderText="Complex" SortExpression="ComplexName" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetClubSchedulebyLeagueandAge" TypeName="UsersTableAdapters.ScheduleTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AgeGroup" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />

</asp:Content>

