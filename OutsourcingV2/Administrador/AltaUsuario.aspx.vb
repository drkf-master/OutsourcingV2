Public Class AltaUsuario
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Not IsPostBack Then
			If Session("DatosUsuario") Is Nothing Then
				Session("url") = Nothing
				Response.Redirect("LoginGeneral.aspx")
			End If
			If Session("url") Is Nothing Then
				Response.Redirect("LoginGeneral.aspx")
			End If
			llenaGridUsuarios()
			LlenaListaAdscripcion()
			LlenaListaPerfiles()
			MostrarControlesUsuario(False)
		Else
			lblBuscarPersonaMensaje.Text = ""
			lblBuscarPersonaMensaje.Text = ""
		End If
		If Session("datosUsuario") Is Nothing Then
			Session("url") = Nothing
			Response.Redirect("LoginGeneral.aspx")
		End If
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

	Protected Sub llenaGridUsuarios()
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Try
			Dim DSConsulta As Data.DataSet = objOutsourcing.ConsultarUsuarios()
			If DSConsulta.Tables(0).Rows.Count > 0 Then
				If IsNumeric(DSConsulta.Tables(0).Rows(0).Item(0).ToString) Then
					grdUsuariosSistema.DataSource = DSConsulta
					grdUsuariosSistema.DataBind()
				Else
					lblBuscarPersonaMensaje.Text = DSConsulta.Tables(0).Rows(0).Item(0).ToString
					Exit Sub
				End If
			End If
		Catch ex As Exception
			lblBuscarPersonaMensaje.Text = "Error el cargar usuarios."
		End Try
	End Sub

	Protected Sub LlenaListaAdscripcion()
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim objUsuario As New Usuario
		Dim DSConsulta As Data.DataSet = objOutsourcing.consultaAdscripcion()
		'objOutsourcing.ValidarUsuario()
		Try
			If DSConsulta.Tables(0).Rows.Count > 0 Then
				'drpListAdscripcion.DataSource = DSConsulta.Tables(2).Rows.Count
				'drpListAdscripcion.DataBind()
				'Usuario.LlenaDropdownList(drpListAdscripcion, DSConsulta)
				Dim i As Integer
				Try
					drpListAdscripcion.Items.Clear()

					For i = 0 To DSConsulta.Tables(0).Rows.Count - 1
						Dim item As New DropDownList()

						item.DataValueField = DSConsulta.Tables(0).Rows(i).Item(2)
						item.DataTextField = DSConsulta.Tables(0).Rows(i).Item(6)
						Dim stritem As String = item.DataTextField
						drpListAdscripcion.Items.Add(stritem)
						item.DataBind()
					Next


				Catch ex As Exception
				End Try
			End If
			DSConsulta = Nothing
		Catch ex As Exception
			lblBuscarPersonaMensaje.Text = "Error el cargar las adscripciones."
		End Try
	End Sub

	Protected Sub LlenaListaPerfiles()
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim objUsuario As New Usuario
		Dim DSConsulta As Data.DataSet = objOutsourcing.consultaPerfiles()
		Try
			If DSConsulta.Tables(0).Rows.Count > 0 Then
				Usuario.LlenaDropdownList(drpListTipoPerfil, DSConsulta)
			End If
			DSConsulta = Nothing
		Catch ex As Exception
			lblBuscarPersonaMensaje.Text = "Error el cargar los perfiles."
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

	Protected Sub btnCancelarUsuarioAlta_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancelarAltaUsuario.Click
		LimpiarFormularioAltaUsuario()
		MostrarControlesUsuario(False)
	End Sub

	Protected Sub btnBuscarColonia_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBuscarColonia.Click
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim DSConsulta As Data.DataSet
		lblColoniaMensaje.Text = "" 'cambiar etiqueta
		Try
			Select Case btnBuscarColonia.Text
				Case "Buscar Colonia"
					Dim strCodigoPostal = txtCP.Text
					DSConsulta = objOutsourcing.consultarColonia(strCodigoPostal)
					If DSConsulta.Tables(0).Rows.Count > 0 Then
						'Comunes.LlenaRadComboCatalogo(Me.rcmbColonia, DSConsulta) 'aqui debe llenar el combo del CodigoPostal
						btnBuscarColonia.Text = "Nueva búsqueda"
						txtCP.Enabled = False
					Else
						lblColoniaMensaje.Text = "No existe la colonia, puedes borrar el código postal y continuar con la inserción de la persona."
						txtCP.Enabled = True
						drpColonia.Items.Clear()
						drpColonia.Text = ""
					End If
					DSConsulta = Nothing
				Case "Nueva búsqueda"
					drpColonia.Items.Clear()
					drpColonia.Text = ""
					btnBuscarColonia.Text = "Buscar Colonia"
					txtCP.Enabled = True
			End Select
		Catch ex As Exception
			lblColoniaMensaje.Text = "Error al cargar la colonia."
		End Try
	End Sub

	Private Sub btnAltaUsuario_Click(sender As Object, e As EventArgs) Handles btnAltaUsuario.Click
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim objUsuarioSistema As New Usuario
		Dim strIdUsuario As String 'Resultado de la consulta
		Dim strIdPersona As String
		'Dim encripta As New MD5
		lblBuscarPersonaMensaje.Text = "" 'usuario
		If drpListAdscripcion.SelectedIndex < 0 Then
			lblBuscarPersonaMensaje.Text = "Seleccione una adscripción."
			drpListAdscripcion.Text = ""
			Exit Sub
		End If
		If drpListTipoPerfil.SelectedIndex < 0 Then
			lblBuscarPersonaMensaje.Text = "Seleccione un Pefil."
			drpListTipoPerfil.Text = ""
			Exit Sub
		End If

		Try
			strIdUsuario = ViewState("IdUsuario")
			Dim strUsuario As String = txtUsuario.Text
			Dim strPassword As String = objUsuarioSistema.CalculaMD5(txtPassword.Text)
			Dim intIdPerfil As String = drpListTipoPerfil.SelectedValue '
			Dim intIdAdscripcion = drpListAdscripcion.SelectedValue '
			Select Case btnAltaUsuario.Text
				Case "Generar Usuario"
					strIdPersona = ViewState("IdPersona")
					If IsNumeric(strIdPersona) Then
						Dim strConsultaUsuario As String = objOutsourcing.ConsultaNombreUsuario(strIdPersona)
						Select Case strConsultaUsuario
							Case "1"
								lblBuscarPersonaMensaje.Text = "El nombre de Usuario ya existe, cambielo e inténtelo de nuevo."
								Exit Sub
							Case "0"
							Case "-1"
								lblBuscarPersonaMensaje.Text = "Ocurrió un error en la consulta de Usuario Disponible, puede ser la conexión, intentelo de nuevo."
								Exit Sub
							Case Else
								lblBuscarPersonaMensaje.Text = "El procedimiento de Consulta Usuario Disponible regresa un valor no válido."
								Exit Sub
						End Select
					Else
						lblBuscarPersonaMensaje.Text = "La persona no tiene un Identificador válido. Busque de nuevo a la persona y vuelva a intentarlo."
						Exit Sub
					End If
					strIdUsuario = objOutsourcing.insertaUsuario(strIdPersona, strUsuario, strPassword, intIdPerfil, intIdAdscripcion)

				Case "Actualizar Usuario"
					If IsNumeric(strIdUsuario) Then
						strIdUsuario = strIdUsuario
					Else
						lblBuscarPersonaMensaje.Text = "El Identificador del usuario no es válido, intente de nuevo."
						Exit Sub
					End If
					strIdUsuario = objOutsourcing.ActualizarUsuario(strIdUsuario, strUsuario, strPassword, intIdPerfil, intIdAdscripcion)

				Case "Dar de alta"
					If IsNumeric(strIdUsuario) Then

					Else
						lblBuscarPersonaMensaje.Text = "El Identificador del usuario no es válido, intente de nuevo."
						Exit Sub
					End If
					strIdUsuario = objOutsourcing.insertaUsuarioAplicacion(strIdUsuario, strPassword, intIdPerfil, intIdAdscripcion)
			End Select

			If IsNumeric(strIdUsuario) Then
				If strIdUsuario > 0 Then
					llenaGridUsuarios()
					LimpiarFormularioAltaUsuario()
					lblBuscarPersonaMensaje.Text = "La operación fue éxitosa."
					MostrarControlesUsuario(False)
				Else
					lblBuscarPersonaMensaje.Text = "Ocurrio un error en la inserción de usuario, inténtelo de nuevo."
				End If
			Else
				lblBuscarPersonaMensaje.Text = strIdUsuario
				MostrarControlesUsuario(True)
			End If
		Catch ex As Exception
			lblBuscarPersonaMensaje.Text = ex.ToString
		End Try

	End Sub
End Class


