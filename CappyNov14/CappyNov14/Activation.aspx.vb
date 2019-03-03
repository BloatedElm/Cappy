

Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class Activation
    Inherits System.Web.UI.Page
    'Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
    ' If Not Me.IsPostBack Then
    'Dim constr As String = ConfigurationManager.ConnectionStrings("DatabaseConnectionString").ConnectionString
    'Dim activationCode As String = Guid.Empty.ToString()
    'Using con As New SqlConnection(constr)
    'Using cmd As New SqlCommand(("DELETE FROM UserActivation WHERE ActivationCode = '@ActivationCode'"))
    ' Using cmd As New SqlCommand("update UserActivation set ActivationCode='',activationCode=@ActivationCode", con)
    '
    'Using sda As New SqlDataAdapter()
    'cmd.Parameters.AddWithValue("@ActivationCode", Convert.ToString(Request.QueryString("activationCode")))
    'con.Open()
    '
    'Dim rowsAffected As Integer
    'cmd.ExecuteNonQuery()
    'con.Close()
    'If rowsAffected = 1 Then
    'lblmessage.Text = "Activation Has Been Successful!"
    'lblLogin.Text = <a href="Login.aspx">Log In</a>
    'Else
    'lblmessage.Text = "Error, Invalid Activation Code."
    'lblLogin.Text = " "
    'End If
    'End Using
    'End Using
    'End Using

    'End If

    '-----------------------------
    ' Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("DatabaseConnectionString").ConnectionString)

    '  Dim cmd As New SqlCommand()

    'If Not Page.IsPostBack Then

    'Dim dr As SqlDataReader

    'Try

    'Here we will check from the passed querystring that if the email id/username and generated unique code is same then the panel for resetting password will be visible otherwise not

    'cmd = New SqlCommand("select UserId from UserActivation where ActivationCode=@ActivationCode", con)

    'cmd.Parameters.AddWithValue("@ActivationCode", Convert.ToString(Request.QueryString("ActivationCode")))
    '



    'If con.State = ConnectionState.Closed Then

    'con.Open()

    'End If

    'dr = cmd.ExecuteReader()




    'If dr.HasRows Then

    'lblmessage.Text = "Activation Has Been Successful!"
    'lblLogin.Text = <a href="Login.aspx">Log In</a>

    'Dim cmd2 As New SqlCommand("delete ActivationCode from UserActivation where ActivationCode=@ActivationCode")

    'cmd2.ExecuteReader()




    ' Else
    '
    'lblmessage.Text = "Error, Invalid Activation Code."
    'lblLogin.Text = " "
    '
    'Return

    'End If

    'dr.Close()
    '
    'dr.Dispose()

    '            Catch ex As Exception

    'lblmessage.Text = "Error Occured: " & ex.Message.ToString()

    '           Finally
    '
    '            cmd.Dispose()



    'con.Close()

    'End Try

    'End If
    '
    '  End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not Me.IsPostBack Then

            'Dim constr As String = ConfigurationManager.ConnectionStrings("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True").ConnectionString

            Dim activationCode As String = If(Not String.IsNullOrEmpty(Request.QueryString("ActivationCode")), Request.QueryString("ActivationCode"), Guid.Empty.ToString())

            Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

                Using cmd As New SqlCommand("DELETE FROM UserActivation WHERE ActivationCode = @ActivationCode")

                    Using sda As New SqlDataAdapter()

                        cmd.CommandType = CommandType.Text

                        cmd.Parameters.AddWithValue("@ActivationCode", activationCode)

                        cmd.Connection = con

                        con.Open()

                        Dim rowsAffected As Integer = cmd.ExecuteNonQuery()

                        con.Close()

                        If rowsAffected = 1 Then

                            lblmessage.Text = "Activation successful."

                        Else

                            lblmessage.Text = "Invalid Activation code."

                        End If

                    End Using

                End Using

            End Using

        End If

    End Sub

End Class

