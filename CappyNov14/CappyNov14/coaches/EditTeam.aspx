<%@ Page Title="Edit Team" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="EditTeam.aspx.vb" Inherits="coaches_EditTeam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Edit Player Stats</h2>
    <h3>Select Team ID:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="TeamId" DataValueField="TeamId">
    </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="UsersTableAdapters.TeamsIdDDLTableAdapter">
            <DeleteParameters>
                <asp:Parameter Name="Original_TeamId" Type="Int32" />
            </DeleteParameters>
        </asp:ObjectDataSource>
    </h3>
    <br />
    
    &nbsp;&nbsp;&nbsp;
    <br />
    
    <asp:GridView ID="gvRoster" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="PlayerId" DataSourceID="ObjectDataSource1" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="TeamName" HeaderText="Team" SortExpression="TeamName" />
            <asp:BoundField DataField="FirstName" HeaderText="First" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last" SortExpression="LastName" />
            <asp:BoundField DataField="JerseyNumber" HeaderText="Number" SortExpression="JerseyNumber" />
            <asp:BoundField DataField="League" HeaderText="League" SortExpression="League" />
            <asp:BoundField DataField="AgeGroup" HeaderText="AgeGroup" SortExpression="AgeGroup" />
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRosterByTeamId" TypeName="UsersTableAdapters.TeamRosterTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="TeamId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="197px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PlayerStatsId" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="GamesPlayed" HeaderText="Games Played" SortExpression="GamesPlayed" />
            <asp:BoundField DataField="GamesStarted" HeaderText="Games Started" SortExpression="GamesStarted" />
            <asp:BoundField DataField="SubIns" HeaderText="Sub-Ins" SortExpression="SubIns" />
            <asp:BoundField DataField="Goals" HeaderText="Goals" SortExpression="Goals" />
            <asp:BoundField DataField="Shots" HeaderText="Shots" SortExpression="Shots" />
            <asp:BoundField DataField="Assists" HeaderText="Assists" SortExpression="Assists" />
            <asp:BoundField DataField="FoalsCommitted" HeaderText="Fouls" SortExpression="FoalsCommitted" />
            <asp:BoundField DataField="RedCards" HeaderText="Reds" SortExpression="RedCards" />
            <asp:BoundField DataField="YellowCards" HeaderText="Yellows" SortExpression="YellowCards" />
            <asp:BoundField DataField="Saves" HeaderText="Saves" SortExpression="Saves" />
            <asp:BoundField DataField="GoalsConceded" HeaderText="Goals Conceded" SortExpression="GoalsConceded" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByPlayerId" TypeName="UsersTableAdapters.PlayerStatsDetVTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_PlayerStatsId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PlayerId" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="GamesPlayed" Type="Int32" />
            <asp:Parameter Name="GamesStarted" Type="Int32" />
            <asp:Parameter Name="SubIns" Type="Int32" />
            <asp:Parameter Name="Goals" Type="Int32" />
            <asp:Parameter Name="Shots" Type="Int32" />
            <asp:Parameter Name="Assists" Type="Int32" />
            <asp:Parameter Name="FoalsCommitted" Type="Int32" />
            <asp:Parameter Name="RedCards" Type="Int32" />
            <asp:Parameter Name="YellowCards" Type="Int32" />
            <asp:Parameter Name="Saves" Type="Int32" />
            <asp:Parameter Name="GoalsConceded" Type="Int32" />
            <asp:Parameter Name="Season" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="gvRoster" Name="PlayerId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="PlayerId" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="GamesPlayed" Type="Int32" />
            <asp:Parameter Name="GamesStarted" Type="Int32" />
            <asp:Parameter Name="SubIns" Type="Int32" />
            <asp:Parameter Name="Goals" Type="Int32" />
            <asp:Parameter Name="Shots" Type="Int32" />
            <asp:Parameter Name="Assists" Type="Int32" />
            <asp:Parameter Name="FoalsCommitted" Type="Int32" />
            <asp:Parameter Name="RedCards" Type="Int32" />
            <asp:Parameter Name="YellowCards" Type="Int32" />
            <asp:Parameter Name="Saves" Type="Int32" />
            <asp:Parameter Name="GoalsConceded" Type="Int32" />
            <asp:Parameter Name="Season" Type="String" />
            <asp:Parameter Name="Original_PlayerStatsId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    </asp:Content>

