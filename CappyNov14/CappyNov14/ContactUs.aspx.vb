
Partial Class ContactUs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If (Context.User.IsInRole("Administrator")) Then
            lbl1.Visible = True
        ElseIf (Context.User.IsInRole("Player")) Then
            lbl3.Visible = True
        ElseIf (Context.User.IsInRole("Coach")) Then
            lbl2.Visible = True
        End If

    End Sub
End Class
