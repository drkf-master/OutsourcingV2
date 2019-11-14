Public Class AltaUsuario
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


	End Sub

	Protected Sub btnBuscarPersona_Click(sender As Object, e As EventArgs) Handles btnBuscarPersona.Click

		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim strHomoclave As String = "null"
		Dim strRfc As String
		Dim DSConsultaNombrePersona As Data.DataSet
		Dim dsConsulta As Data.DataSet = objOutsourcing.consultaAdscripcion
		lblBuscarPersonaMensaje.Text = ""
		ViewState("IdPersona") = ""

		'Me.lblBuscarUsuarioMensaje.Text = ""
		MostrarControlesUsuario(False)
		If txtHomoclave.Text <> "" Then
			strHomoclave = "'" & txtHomoclave.Text & "'"
		End If
		strRfc = txtRfc.Text
		DSConsultaNombrePersona = objOutsourcing.consultaNombrePersona(strRfc, strHomoclave)
		If DSConsultaNombrePersona.Tables(0).Rows.Count = 0 Then
			LimpiarFormularioAltaUsuario()
			'mvwUsuario.ActiveViewIndex = 1
		Else
			If IsNumeric(DSConsultaNombrePersona.Tables(0).Rows(0).Item(0).ToString) Then
				ViewState("IdPersona") = DSConsultaNombrePersona.Tables(0).Rows(0).Item(0).ToString
				BuscarUsuario()
			Else
				lblBuscarPersonaMensaje.Text = DSConsultaNombrePersona.Tables(0).Rows(0).Item(0).ToString
				Exit Sub
			End If
			lblBuscarPersonaMensaje.Text = "Persona encontrada:  " & DSConsultaNombrePersona.Tables(0).Rows(0).Item(1).ToString
			txtRfc.Enabled = False
			txtHomoclave.Enabled = False
			btnBuscarPersona.Text = "Nueva búsqueda"

		End If
	End Sub

	Protected Sub LlenaListaAdscripcion()
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim DSConsulta As Data.DataSet = objOutsourcing.consultaAdscripcion()
		'objOutsourcing.ValidarUsuario()
		Try
			If DSConsulta.Tables(0).Rows.Count > 0 Then
				Dim myDataSet = DSConsulta
				drpListAdscripcion.DataSource = myDataSet
				drpListAdscripcion.DataBind()
				'Comunes.LlenaRadComboCatalogo(Me.rcmbAdscripcion, DSConsulta)
			End If
			DSConsulta = Nothing
		Catch ex As Exception
			lblBuscarPersonaMensaje.Text = "Error el cargar las adscripciones."
		End Try
	End Sub



	Protected Function BuscarUsuario() As Boolean
		'Dim objLogin As New Login
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim intIdPersona As Integer
		Dim DSBuscaUsuario As Data.DataSet
		Try
			intIdPersona = ViewState("IdPersona")

			DSBuscaUsuario = objOutsourcing.BuscaUsuario(intIdPersona)

			If DSBuscaUsuario.Tables(0).Rows.Count > 0 And IsNumeric(DSBuscaUsuario.Tables(0).Rows(0).Item(0)) Then
				If DSBuscaUsuario.Tables(0).Rows(0).Item(2) = True Then
					lblBuscarPersonaMensaje.Text = "La persona ya tiene un usuario en el sistema. Su usuario es: '" & DSBuscaUsuario.Tables(0).Rows(0).Item(1) & "'"
					lblBuscarPersonaMensaje.Visible = True
					'navBuscar.Attributes["class"] = False


				Else
					lblBuscarPersonaMensaje.Text = "La persona ya tiene un usuario creado en otro sistema. Complete los demás campos para darlo de alta en este sistema."
					lblBuscarPersonaMensaje.Visible = True
					ViewState("IdUsuario") = DSBuscaUsuario.Tables(0).Rows(0).Item(0)
					'MostrarControlesUsuario(True)
					txtUsuario.Text = DSBuscaUsuario.Tables(0).Rows(0).Item(1)
					txtUsuario.Enabled = False
					' Me.btnBuscarUsuario.Visible = False
					btnAltaUsuario.Visible = True
					btnCancelarAltaUsuario.Visible = True
					btnAltaUsuario.Text = "Dar de alta"
				End If
			ElseIf DSBuscaUsuario.Tables(0).Rows.Count > 0 And DSBuscaUsuario.Tables(0).Rows(0).Item(0).ToString <> "" Then
				lblBuscarPersonaMensaje.Text = "La persona no tiene nungún usuario creado. Agréguelo por favor."
				'MostrarControlesUsuario(True)
				lblBuscarPersonaMensaje.Visible = True
				' Me.btnBuscarUsuario.Visible = False
				btnAltaUsuario.Visible = True
				btnCancelarAltaUsuario.Visible = True
			Else
				lblBuscarPersonaMensaje.Text = "El Procedimiento de Búsqueda de usuario no funciona correctamente o no hay conexión."
			End If
		Catch ex As Exception
			lblBuscarPersonaMensaje.Text = ex.ToString
		End Try

		Return True
	End Function

	Protected Sub MostrarControlesUsuario(ByVal bVisible As Boolean)
		'Datos del Usuario
		lblUsuario.Text = bVisible
		txtUsuario.Visible = bVisible
		lblPassword.Visible = bVisible
		txtPassword.Visible = bVisible
		lblConfirmPassword.Visible = bVisible
		txtConfirmPassword.Visible = bVisible
		lblListTipoPerfil.Visible = bVisible
		drpListTipoPerfil.Visible = bVisible
		lblListAdscripcion.Visible = bVisible
		drpListAdscripcion.Visible = bVisible
		btnAltaUsuario.Visible = bVisible
		btnCancelarAltaUsuario.Visible = bVisible
	End Sub

	Protected Sub LimpiarFormularioAltaUsuario()
		txtRfc.Text = ""
		txtHomoclave.Text = ""
		txtNombre.Text = ""
		txtApellidoPaterno.Text = ""
		txtApellidoMaterno.Text = ""
		txtTelefono.Text = ""
		txtCelular.Text = ""
		txtCorreo.Text = ""
		txtCalle.Text = ""
		txtCP.Text = ""
		lblColonia.Text = ""
		drpColonia.Items.Clear()
		drpColonia.SelectedIndex = -1
		txtUsuario.Text = ""
		txtPassword.Text = ""
		txtConfirmPassword.Text = ""
		drpListTipoPerfil.Text = ""
		drpListTipoPerfil.SelectedIndex = -1
		drpListAdscripcion.Text = ""
		drpListAdscripcion.SelectedIndex = -1
		drpListTipoPerfil.Enabled = True
		drpListAdscripcion.Enabled = True
		txtRfc.Enabled = True
		txtHomoclave.Enabled = True
		btnBuscarPersona.Text = "Buscar Persona"
		btnBuscarColonia.Text = "Buscar Colonia"
		btnAltaUsuario.Text = "Generar Usuario"
		txtCP.Enabled = True
		txtUsuario.Enabled = True
	End Sub
End Class


