Public Class RevisarServicios
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		Dim strResultado As String = "2"
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim dsConsultaUsuario As Data.DataSet = objOutsourcing.ConsultarDatosUsuario(strResultado)

		DatosProyecto.DataSource = dsConsultaUsuario
		DatosProyecto.DataBind()

	End Sub


End Class