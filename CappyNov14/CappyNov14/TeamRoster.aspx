<%@ Page Title="Team Roster" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="TeamRoster.aspx.vb" Inherits="TeamRoster" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-right: 4px;
        }
        .auto-style3 {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Team Roster</h2>
    <table class="roster-table">
        <tr>
            <td colspan="2">
 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PlayerId" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="TeamName" HeaderText="Team" SortExpression="TeamName" />
                <asp:BoundField DataField="League" HeaderText="League" SortExpression="League" />
                <asp:BoundField DataField="AgeGroup" HeaderText="Age Group" SortExpression="AgeGroup" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTeamNamebyTeamId" TypeName="UsersTableAdapters.TeamRosterTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="TeamId" QueryStringField="TeamId" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>

              </td>  </tr>
        
         <tr>
            
            <td class="roster-table-left" >
       
    
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PlayerId" DataSourceID="ObjectDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="Player" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Name" SortExpression="LastName" />
            <asp:BoundField DataField="JerseyNumber" HeaderText="Number" SortExpression="JerseyNumber" />
            <asp:CommandField SelectText="Stats" ShowSelectButton="True" />
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRosterByTeamId" TypeName="UsersTableAdapters.TeamRosterTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="TeamId" QueryStringField="TeamId" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</td>
            <td >

        
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PlayerStatsId" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Goals" HeaderText="Goals" SortExpression="Goals" />
                <asp:BoundField DataField="Shots" HeaderText="Shots" SortExpression="Shots" />
                <asp:BoundField DataField="GamesPlayed" HeaderText="Games#" SortExpression="GamesPlayed" />
                <asp:BoundField DataField="Assists" HeaderText="Assists" SortExpression="Assists" />
                <asp:BoundField DataField="Saves" HeaderText="Saves" SortExpression="Saves" />
                <asp:BoundField DataField="GoalsConceded" HeaderText="GC" SortExpression="GoalsConceded" />
                <asp:BoundField DataField="FoalsCommitted" HeaderText="Fouls" SortExpression="FoalsCommitted" />
                <asp:BoundField DataField="RedCards" HeaderText="Reds" SortExpression="RedCards" />
                <asp:BoundField DataField="YellowCards" HeaderText="Yellows" SortExpression="YellowCards" />
                <asp:BoundField DataField="Season" HeaderText="Season" SortExpression="Season" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>


            </td>
        </tr>
        <tr>
            <td colspan="2">

    
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetPlayerStats" TypeName="UsersTableAdapters.PlayerStatsTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="PlayerId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
 
    <br />
    
    <h3>Team Schedule
        </h3>
       <br />

 <!--   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" CssClass="auto-style2" DocumentMapWidth="100%" Font-Names="Verdana" Font-Size="8pt" ShowBackButton="False" ShowCredentialPrompts="False" ShowDocumentMapButton="False" ShowFindControls="False" ShowPageNavigationControls="False" ShowPromptAreaButton="False" ShowRefreshButton="False" ShowWaitControlCancelLink="False" ShowZoomControl="False" SizeToReportContent="True" ToolBarItemBorderStyle="None" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="707px">
        <LocalReport ReportPath="ReportTeamSchedule.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer> -->
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetScheduleByTeamId" TypeName="UsersTableAdapters.ScheduleTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="TeamId" QueryStringField="TeamId" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
       
    
            </td>
        </tr>
    </table>
    </asp:Content>


