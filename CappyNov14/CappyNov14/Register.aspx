<%@ Page Title="Register" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="registration-table">
        <tr>
            <td>First Name:</td>
            <td>
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>User Name:</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPass" ErrorMessage="Passwords must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Confirm Email:</td>
            <td>
                <asp:TextBox ID="txtConfirmEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" ErrorMessage="Email addresses must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">State</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True">
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
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Zip Code</td>
            <td>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtZip" ErrorMessage="Invalid Zip Code" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Age</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Birthday</td>
            <td>
                <asp:TextBox ID="txtBirthday" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtBirthday" ErrorMessage="Birthdate in MM/DD/YYYY" ValidationExpression="^((((0[13578])|([13578])|(1[02]))[\/](([1-9])|([0-2][0-9])|(3[01])))|(((0[469])|([469])|(11))[\/](([1-9])|([0-2][0-9])|(30)))|((2|02)[\/](([1-9])|([0-2][0-9]))))[\/]\d{4}$|^\d{4}$" ValidateRequestMode="Disabled"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnClear" runat="server" Height="33px" Text="Clear Fields" Width="108px" />
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Height="33px" Text="Submit" Width="108px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Username Required"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address Required"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmEmail" ErrorMessage="Confirm Your Email Address"></asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmPass" ErrorMessage="Confirm Your Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
</asp:Content>

