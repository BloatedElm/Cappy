<%@ Page Title="Edit Schedule" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="EditSchedule.aspx.vb" Inherits="coaches_EditSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 34px;
        }
        .auto-style4 {
            height: 99px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <h2>Edit Schedule</h2>
    <h3>Select Team ID:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="TeamId" DataValueField="TeamId">
    </asp:DropDownList>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="UsersTableAdapters.TeamsIdDDLTableAdapter">
            <DeleteParameters>
                <asp:Parameter Name="Original_TeamId" Type="Int32" />
            </DeleteParameters>
        </asp:ObjectDataSource>
    </h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="GameId" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="GameId" HeaderText="GameId" InsertVisible="False" ReadOnly="True" SortExpression="GameId" />
                <asp:BoundField DataField="TeamId" HeaderText="TeamId" SortExpression="TeamId" />
                <asp:BoundField DataField="OpponentId" HeaderText="OpponentId" SortExpression="OpponentId" />
                <asp:BoundField DataField="LocationId" HeaderText="LocationId" SortExpression="LocationId" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="FieldId" HeaderText="FieldId" SortExpression="FieldId" />
                <asp:BoundField DataField="HTeamGoals" HeaderText="HTeamGoals" SortExpression="HTeamGoals" />
                <asp:BoundField DataField="ATeamGoals" HeaderText="ATeamGoals" SortExpression="ATeamGoals" />
                <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
                <asp:BoundField DataField="CoachId" HeaderText="CoachId" SortExpression="CoachId" />
                <asp:BoundField DataField="League" HeaderText="League" SortExpression="League" />
                <asp:BoundField DataField="AgeGroup" HeaderText="AgeGroup" SortExpression="AgeGroup" />
                <asp:BoundField DataField="Association" HeaderText="Association" SortExpression="Association" />
                <asp:BoundField DataField="FieldName" HeaderText="FieldName" SortExpression="FieldName" />
                <asp:BoundField DataField="ComplexName" HeaderText="ComplexName" SortExpression="ComplexName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Expr2" HeaderText="Expr2" InsertVisible="False" ReadOnly="True" SortExpression="Expr2" />
                <asp:BoundField DataField="Expr4" HeaderText="Expr4" SortExpression="Expr4" />
                <asp:BoundField DataField="Expr6" HeaderText="Expr6" SortExpression="Expr6" />
                <asp:BoundField DataField="Expr8" HeaderText="Expr8" InsertVisible="False" ReadOnly="True" SortExpression="Expr8" />
                <asp:BoundField DataField="Expr9" HeaderText="Expr9" SortExpression="Expr9" />
                <asp:BoundField DataField="Expr10" HeaderText="Expr10" InsertVisible="False" ReadOnly="True" SortExpression="Expr10" />
                <asp:BoundField DataField="TeamName1" HeaderText="TeamName1" SortExpression="TeamName1" />
                <asp:BoundField DataField="League1" HeaderText="League1" SortExpression="League1" />
                <asp:BoundField DataField="Association1" HeaderText="Association1" SortExpression="Association1" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetScheduleByTeamId" TypeName="UsersTableAdapters.ScheduleTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1000" Name="TeamId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
    <br />
        <table class="home-table">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="GameId" DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="GameId" HeaderText="GameId" InsertVisible="False" ReadOnly="True" SortExpression="GameId" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDDlgameId" TypeName="UsersTableAdapters.DDLgamesidTableAdapter">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_GameId" Type="Int32" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="GameId" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>HomeGoals</td>
                <td>
                    <asp:TextBox ID="txtHGoals" runat="server"></asp:TextBox>
                </td>
                <td>Date:</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Away Goals:</td>
                <td>
                    <asp:TextBox ID="txtAGoals" runat="server"></asp:TextBox>
                </td>
                <td>Time:</td>
                <td>
                    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>LocationId:<asp:DropDownList ID="ddlLoactionId" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource5" DataTextField="LocationId" DataValueField="LocationId">
                    </asp:DropDownList>
                    </td>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="UsersTableAdapters.LocationsDDLTableAdapter">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_LocationId" Type="Int32" />
                        </DeleteParameters>
                    </asp:ObjectDataSource>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource4" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="ComplexName" HeaderText="Complex" SortExpression="ComplexName" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetComplexName" TypeName="UsersTableAdapters.LocationsTableTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlLoactionId" Name="LocationId" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>Field Id<asp:DropDownList ID="ddlFieldId" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource6" DataTextField="FieldId" DataValueField="FieldId">
                    </asp:DropDownList>
                    </td>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetFieldIdByLaocationId" TypeName="UsersTableAdapters.FieldsDDLTableAdapter">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_FieldId" Type="Int32" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlLoactionId" Name="LocationId" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource7" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                        <EditRowStyle BackColor="#999999" />
                        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="FieldName" HeaderText="Field Name" SortExpression="FieldName" />
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetFieldNamebyLocationId" TypeName="UsersTableAdapters.FieldsNameTableAdapter">
                        <InsertParameters>
                            <asp:Parameter Name="FieldName" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlFieldId" Name="FieldId" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">Time:</td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnEnter" runat="server" Text="Enter" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
   
        </asp:Content>

