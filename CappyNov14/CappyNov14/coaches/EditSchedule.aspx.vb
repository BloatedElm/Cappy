Imports System.Data.SqlClient
Imports System.Web.Security
Partial Class coaches_EditSchedule


    Inherits System.Web.UI.Page

    Dim connection As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.Page.User.Identity.IsAuthenticated Then
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnEnter.Click
        connection.Open()

        Dim updateQuery As String = "UPDATE Games SET HTeamGoals'" & txtHGoals.Text & "',"

    End Sub
End Class
