Public Class PaginaPrincipal
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Session("datosUsuario") Is Nothing Then
			Session("url") = Nothing
			Response.Redirect("LoginGeneral.aspx")
		End If
		If Session("url") Is Nothing Then
			'Response.Redirect("LoginGeneral.aspx")
		End If
	End Sub

End Class