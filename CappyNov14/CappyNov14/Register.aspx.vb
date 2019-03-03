Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Mail
Partial Class Register
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click




        Dim userId As Integer = 0

        Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")

            Using cmd As New SqlCommand("Insert_Users")

                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.StoredProcedure
                    cmd.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim())
                    cmd.Parameters.AddWithValue("@LastName", txtLName.Text.Trim())
                    cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim())
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim())
                    cmd.Parameters.AddWithValue("@Age", txtAge.Text.Trim())
                    cmd.Parameters.AddWithValue("@Birthday", txtBirthday.Text.Trim())
                    cmd.Parameters.AddWithValue("@City", txtCity.Text.Trim())
                    cmd.Parameters.AddWithValue("@State", ddlState.Text.Trim())
                    cmd.Parameters.AddWithValue("@Zip", txtZip.Text.Trim())
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim())
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim)
                    cmd.Connection = con
                    con.Open()
                    userId = Convert.ToInt32(cmd.ExecuteScalar())
                    con.Close()

                End Using
            End Using
            Dim messege As String = String.Empty
            Select Case userId
                Case -1
                    messege = "Username already exists."
                Case -2
                    messege = "This email address has already been used before."
                Case Else
                    messege = "Registration complete, Welcome to KSU United! Please check your email To confirm activation!"
                    SendActivationEmail(userId)
                    Exit Select
            End Select
            ClientScript.RegisterStartupScript([GetType](), "alert", (Convert.ToString("alert( ' ") & messege) + " ');", True)
        End Using

        txtFName.Text = ""
        txtLName.Text = ""
        txtUserName.Text = ""
        txtPassword.Text = ""
        txtEmail.Text = ""
        txtConfirmPass.Text = ""
        txtConfirmEmail.Text = ""
        txtAddress.Text = ""
        txtAge.Text = ""
        txtCity.Text = ""
        'txtState.Text = ""
        txtZip.Text = ""
        txtBirthday.Text = ""
    End Sub
    Private Sub SendActivationEmail(userId As Integer)
        Dim activationCode As String = Guid.NewGuid().ToString()
        Using con As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDBFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
            Using cmd As New SqlCommand("INSERT INTO UserActivation VALUES(@UserId, @ActivationCode)")
                Using sda As New SqlDataAdapter
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@UserId", userId)
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode)
                    cmd.Connection = con
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                End Using
            End Using
        End Using
        Using mm As New MailMessage("KSU_United@gmail.com", txtEmail.Text)
            mm.Subject = "KSU_United Account Activation"
            Dim body As String = "Hello " + txtUserName.Text.Trim() + ","
            body += "<br /><br />Thank you for playing with Kennesaw United. Our mission is to sculpt soccer players "
            body += "of the future."
            body += "<br />Please click the link below to activate your account."
            body += "<br />For security purposes the link will expire in 24 hours."
            body += "<br /><br />Thank you and welcome!"
            body += "<br />-Let's Go Kennesaw United"
            body += "<br /><br /><a href = '" + Request.Url.GetLeftPart(UriPartial.Authority) +
Page.ResolveUrl("~/Activation.aspx?ActivationCode=" & activationCode) + "'> Click here to activate your account!"
            mm.Body = body
            mm.IsBodyHtml = True
            Dim smtp As New SmtpClient()
            smtp.Host = "smtp.gmail.com"
            smtp.EnableSsl = True
            Dim NetworkCred As New System.Net.NetworkCredential()
            NetworkCred.UserName = "KennesawUnited@gmail.com"
            NetworkCred.Password = "KSUnited"
            smtp.UseDefaultCredentials = True
            smtp.Credentials = NetworkCred
            smtp.Port = 587
            smtp.Send(mm)
        End Using
    End Sub
    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        txtFName.Text = ""
        txtLName.Text = ""
        txtUserName.Text = ""
        txtPassword.Text = ""
        txtEmail.Text = ""
        txtConfirmPass.Text = ""
        txtConfirmEmail.Text = ""
        txtAddress.Text = ""
        txtAge.Text = ""
        txtCity.Text = ""
        'txtState.Text = ""
        txtZip.Text = ""
        txtBirthday.Text = ""
    End Sub
End Class
