Imports System.Web.Security
Imports System.Data.SqlClient
Partial Class players_AccountInfo
    Inherits System.Web.UI.Page
    Dim connection As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

    Public Sub ExecuteQuery(query As String)
        Dim command As New SqlCommand(Query, connection)
        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()

    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        If Not Me.Page.User.Identity.IsAuthenticated Then
            FormsAuthentication.RedirectToLoginPage()
        End If

        If Not IsPostBack Then

            connection.Open()
            Dim mySelectQuery As String = "SELECT * FROM Users WHERE Username='" & User.Identity.Name & "'"
            Dim myQuery As New SqlCommand(mySelectQuery, connection)

            Dim myReader As SqlDataReader = myQuery.ExecuteReader()

            While (myReader.Read())
                txtUsername.Text = myReader("Username").ToString
                txtFName.Text = myReader("FirstName").ToString
                txtLName.Text = myReader("LastName").ToString
                txtEmail.Text = myReader("Email").ToString
                txtStreetAddress.Text = myReader("Address").ToString
                txtCity.Text = myReader("City").ToString
                ddlState.Text = myReader("State").ToString
                txtZip.Text = myReader("Zip").ToString
                txtPassword.Text = myReader("Password").ToString
                txtBirthday.Text = myReader("Birthday").ToString
                txtAge.Text = myReader("Age").ToString
            End While
            connection.Close()
            myReader.Close()

        End If


        ' 


    End Sub


    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        'from 1bestcsharp.blogspot.com
        Dim updateQuery As String = "UPDATE Users SET FirstName='" & txtFName.Text & "',LastName='" & txtLName.Text & "',Email='" & txtEmail.Text & "',Address='" & txtStreetAddress.Text & "',City='" & txtCity.Text & "',State='" & ddlState.Text & "',Zip='" & txtZip.Text & "',Password='" & txtPassword.Text & "'WHERE Username='" & User.Identity.Name & "'"

        ExecuteQuery(updateQuery)

    End Sub

    Protected Sub btnShow_Click(sender As Object, e As EventArgs) Handles btnShow.Click
        txtPassword.Visible = True
        btnShow.Visible = False

        If txtPassword.Visible = True Then
            btnHide.Visible = True
        End If
    End Sub
    Protected Sub btnHide_Click(sender As Object, e As EventArgs) Handles btnHide.Click
        txtPassword.Visible = False
        btnHide.Visible = False
        btnShow.Visible = True

        If txtPassword.Visible = True Then
            btnHide.Visible = True
        End If
    End Sub
End Class
