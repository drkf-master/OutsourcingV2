Public Class LoginGeneral
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

		' este codigo solo es  prueba de los webservices 
		Dim strResultado As String = "4"
		Dim stridadscripcion As String = "48"
		Dim stridservicio As String = "10"
		Dim strmeta As String = "45"
		Dim strestatus As String = "1"
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		If IsNumeric(strResultado) Then
			If CInt(strResultado) > 0 Then
				Dim dsConsultaUsuario As Data.DataSet = objOutsourcing.ConsultarDatosUsuario(strResultado)

				Dim dsConsultaServicios As Data.DataSet = objOutsourcing.consultarProyectosRevision(stridadscripcion, stridadscripcion, strmeta, strestatus)

				Dim dsEstatus As Data.DataSet = objOutsourcing.consultaEstatusSiguiente(stridservicio)
			Else

			End If
		Else
		End If
	End Sub
End Class