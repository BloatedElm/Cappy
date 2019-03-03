<%@ Page Title="Recreational Teams" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="RecTeams.aspx.vb" Inherits="U6Teams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
        <img alt="Logo" class="kulogo" longdesc="Logo" src="images/kennesaw%20united%20logo.jpg" /></h2>
    <h2>𝓡𝓮𝓬𝓻𝓮𝓪𝓽𝓲𝓸𝓷 𝓣𝓮𝓪𝓶𝓼</h2>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Age Group:<asp:ObjectDataSource ID="ObjectDataSource4" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAgeGroups" TypeName="UsersTableAdapters.AgeDDLTableAdapter">
            <InsertParameters>
                <asp:Parameter Name="AgeGroup" Type="String" />
            </InsertParameters>
</asp:ObjectDataSource>
        <asp:DropDownList ID="ddlAgeGroup" runat="server" DataSourceID="ObjectDataSource4" DataTextField="AgeGroup" DataValueField="AgeGroup" AutoPostBack="True">
        </asp:DropDownList>
    
   
   
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTeamsByLeagueAndAge" TypeName="UsersTableAdapters.TeamsGridviewTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlAgeGroup" Name="AgeGroup" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TeamId" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None" CssClass="auto-style3">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Team" SortExpression="TeamName" />
            <asp:BoundField DataField="FirstName" HeaderText="Coach" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Name" SortExpression="LastName" />
            <asp:BoundField DataField="League" HeaderText="League" SortExpression="League" />
            <asp:BoundField DataField="AgeGroup" HeaderText="AgeGroup" SortExpression="AgeGroup" />
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
    <br />
    <h3>Schedule</h3><br />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource5" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TeamName" HeaderText="Home" SortExpression="TeamName" />
            <asp:BoundField DataField="HTeamGoals" HeaderText="Goals" SortExpression="HTeamGoals" />
            <asp:BoundField DataField="TeamName1" HeaderText="Away" SortExpression="TeamName1" />
            <asp:BoundField DataField="ATeamGoals" HeaderText="Goals" SortExpression="ATeamGoals" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="ComplexName" HeaderText="Complex" SortExpression="ComplexName" />
            <asp:BoundField DataField="FieldName" HeaderText="Field" SortExpression="FieldName" />
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

    <p>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRecSchedulbyAge" TypeName="UsersTableAdapters.ScheduleTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlAgeGroup" Name="AgeGroup" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
    
   
    <br />
</asp:Content>

