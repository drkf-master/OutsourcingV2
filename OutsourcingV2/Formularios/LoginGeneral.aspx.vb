Public Class LoginGeneral
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

		' este codigo solo es  prueba de los webservices 
		Dim strResultado As String = "2"
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		If IsNumeric(strResultado) Then
			If CInt(strResultado) > 0 Then
				Dim dsConsultaUsuario As Data.DataSet = objOutsourcing.ConsultarDatosUsuario(strResultado)

			Else

			End If
		Else
		End If
	End Sub
End Class