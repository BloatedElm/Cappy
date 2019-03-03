<%@ Page Title="Account Information" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="AccountInfo.aspx.vb" Inherits="players_AccountInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><h2>Update Profile</h2>
    
    
    
    <table class="account-table" runat="server">
        <tr><td>
            username:
            </td>
            <td>

                <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" ReadOnly="True"></asp:TextBox>
    <br /></td>

        </tr>
        <tr><td>
            First Name:
            </td>
            <td>
                <asp:TextBox ID="txtFName" runat="server" placeholder="First Name"></asp:TextBox>
            </td>

        </tr>
        <tr><td>
            Last Name:</td>
            <td>
            <asp:TextBox ID="txtLName" placeholder="Last Name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr><td>

            Email:</td>
            <td>

                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                

            </td>
        </tr>
        <tr><td>

            Address:</td>
            <td>
                <asp:TextBox ID="txtStreetAddress" runat="server" placeholder="Street Address"></asp:TextBox>
                
            </td>
        </tr>
        <tr><td>

            City:</td>
            <td><asp:TextBox ID="txtCity" placeholder="City" runat="server"></asp:TextBox>
        </td>
        </tr>
        <tr>
            
            <td>
            State:
            </td>
            <td><asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="GA"></asp:ListItem>
                    <asp:ListItem Value="AL"></asp:ListItem>
                    <asp:ListItem Value="AK"></asp:ListItem>
                    <asp:ListItem Value="AZ"></asp:ListItem>
                    <asp:ListItem Value="AR"></asp:ListItem>
                    <asp:ListItem Value="CA"></asp:ListItem>
                    <asp:ListItem Value="CA"></asp:ListItem>
                    <asp:ListItem Value="CO"></asp:ListItem>
                    <asp:ListItem Value="CT"></asp:ListItem>
                    <asp:ListItem Value="DE"></asp:ListItem>
                    <asp:ListItem Value="FL"></asp:ListItem>
                    <asp:ListItem Value="HI"></asp:ListItem>
                    <asp:ListItem Value="ID"></asp:ListItem>
                    <asp:ListItem Value="IL"></asp:ListItem>
                    <asp:ListItem Value="IN"></asp:ListItem>
                    <asp:ListItem Value="IA"></asp:ListItem>
                    <asp:ListItem Value="KS"></asp:ListItem>
                    <asp:ListItem Value="KY"></asp:ListItem>
                    <asp:ListItem Value="LA"></asp:ListItem>
                    <asp:ListItem Value="ME"></asp:ListItem>
                    <asp:ListItem Value="MD"></asp:ListItem>
                    <asp:ListItem Value="MA"></asp:ListItem>
                    <asp:ListItem Value="MI"></asp:ListItem>
                    <asp:ListItem Value="MN"></asp:ListItem>
                    <asp:ListItem Value="MS"></asp:ListItem>
                    <asp:ListItem Value="MO"></asp:ListItem>
                    <asp:ListItem Value="MT"></asp:ListItem>
                    <asp:ListItem Value="NE"></asp:ListItem>
                    <asp:ListItem Value="NV"></asp:ListItem>
                    <asp:ListItem Value="NJ"></asp:ListItem>
                    <asp:ListItem Value="NM"></asp:ListItem>
                    <asp:ListItem Value="NY"></asp:ListItem>
                    <asp:ListItem Value="NC"></asp:ListItem>
                    <asp:ListItem Value="ND"></asp:ListItem>
                    <asp:ListItem Value="OH"></asp:ListItem>
                    <asp:ListItem Value="OK"></asp:ListItem>
                    <asp:ListItem Value="OR"></asp:ListItem>
                    <asp:ListItem Value="PA"></asp:ListItem>
                    <asp:ListItem Value="RI"></asp:ListItem>
                    <asp:ListItem Value="SC"></asp:ListItem>
                    <asp:ListItem Value="SD"></asp:ListItem>
                    <asp:ListItem Value="TN"></asp:ListItem>
                    <asp:ListItem Value="TX"></asp:ListItem>
                    <asp:ListItem Value="UT"></asp:ListItem>
                    <asp:ListItem Value="VT"></asp:ListItem>
                    <asp:ListItem Value="VA"></asp:ListItem>
                    <asp:ListItem Value="WA"></asp:ListItem>
                    <asp:ListItem Value="WV"></asp:ListItem>
                    <asp:ListItem Value="WI"></asp:ListItem>
                    <asp:ListItem Value="WY"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr><td>

            Zip:</td>
            <td> <asp:TextBox ID="txtZip" placeholder="Zip Code" runat="server"></asp:TextBox>
    <br /></td>
        </tr>
        <tr><td>

            Password:</td>
            <td><asp:TextBox ID="txtPassword" placeholder="Password" runat="server" Visible="False" Width="118px"></asp:TextBox> 
    &nbsp;<asp:Button ID="btnShow" runat="server" Text="Show Password" />
    
     <asp:Button ID="btnHide" runat="server" Text="Hide Password" Visible="False" />
    
     </td>
        </tr>
        <tr><td>

            Birthday:</td>
            <td><asp:TextBox ID="txtBirthday" placeholder="Birthday MM/DD/YYYY" runat="server"></asp:TextBox>
    <br /></td>
        </tr>
        <tr><td>
            Age:
            </td>
            <td><asp:TextBox ID="txtAge" placeholder="Age" runat="server"></asp:TextBox>
    </td>
        </tr>
        <tr><td>
            &nbsp;</td>
            <td> 
    <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" /></td>
        </tr>
        <tr><td>
            &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

