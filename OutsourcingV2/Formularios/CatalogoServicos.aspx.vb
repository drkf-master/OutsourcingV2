Public Class CatalogoServicos
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Not IsPostBack Then
			EstadoVisibleControles(False)
			If llenaComboTipoServicio() Then
				If llenaComboUsuarioMeta() Then
					llenaListaProyecto("null", "null")
				End If
			End If
			lblClienteTipoServicio.Text = lblClienteTipoServicio.Text & " <br />"
			lblNombreProyecto.Text = lblNombreProyecto.Text & " <br />"
			lblDescripcionProyecto.Text = lblDescripcionProyecto.Text & " <br />"
			lblObjetivo.Text = lblObjetivo.Text & " <br />"
			lblInfraestructura.Text = lblInfraestructura.Text & " <br />"
			lblProductoFinal.Text = lblProductoFinal.Text & " <br />"
			lblDuracion.Text = lblDuracion.Text & " <br />"
			lblLider.Text = lblLider.Text & " <br />"
		Else
			lblMensajeCliente.Text = ""
		End If

	End Sub

	''


	Protected Sub btnConsultarProyecto_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnConsultarProyecto.Click

		llenaListaProyecto(dpwTipoServicio.SelectedValue, dpwUsuarioObjetivo.SelectedValue)

		If lstbxServicios.Items.Count > 0 Then
			ViewState("idIndex") = 0
			btnAnterior.Visible = True
			btnSiguiente.Visible = True
			EstadoVisibleControles(True)
			lstbxServicios.SelectedIndex = 0
			llenaDatosProyecto(lstbxServicios.SelectedValue)
		Else
			lblMensajeCliente.Text = "No hay proyectos con este filtro de consulta."
			btnAnterior.Visible = False
			btnSiguiente.Visible = False
			EstadoVisibleControles(False)
		End If
	End Sub

	Protected Sub btnAnterior_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAnterior.Click
		Dim intListaIndex As Integer
		intListaIndex = ViewState("idIndex")
		intListaIndex = intListaIndex - 1
		If intListaIndex > -1 Then
			lstbxServicios.SelectedIndex = intListaIndex
			ViewState("idIndex") = intListaIndex
			llenaDatosProyecto(lstbxServicios.SelectedValue)
		Else

			lstbxServicios.SelectedIndex = lstbxServicios.Items.Count - 1
			ViewState("idIndex") = lstbxServicios.Items.Count - 1
			llenaDatosProyecto(lstbxServicios.SelectedValue)
		End If
	End Sub

	Protected Sub btnSiguiente_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSiguiente.Click
		Dim intListaIndex As Integer
		intListaIndex = ViewState("idIndex")
		intListaIndex = intListaIndex + 1
		If intListaIndex < lstbxServicios.Items.Count Then
			lstbxServicios.SelectedIndex = intListaIndex
			ViewState("idIndex") = intListaIndex
			llenaDatosProyecto(lstbxServicios.SelectedValue)
		Else
			lstbxServicios.SelectedIndex = 0
			ViewState("idIndex") = 0
			llenaDatosProyecto(lstbxServicios.SelectedValue)
		End If
	End Sub
	''
	Function llenaListaProyecto(ByVal strIdTipoServicio As String, ByVal strIdUsuarioMeta As String) As Boolean

		'Dim objProyecto As New Proyecto
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim DSConsulta As Data.DataSet
		Try
			DSConsulta = objOutsourcing.consultarProyectoCliente(strIdTipoServicio, strIdUsuarioMeta)
			If DSConsulta.Tables(0).Columns.Count > 0 Then
				If DSConsulta.Tables(0).Rows.Count > 0 Then
					'Comunes.LlenaRadLista(Me.rlbxProyectos, DSConsulta)

					Dim i As Integer
					Try
						lstbxServicios.Items.Clear()
						For i = 0 To DSConsulta.Tables(0).Rows.Count - 1
							Dim item As New ListItem
							item.Text = DSConsulta.Tables(0).Rows(i).Item(1)
							item.Value = DSConsulta.Tables(0).Rows(i).Item(0)
							lstbxServicios.Items.Add(item)
						Next
						Return True
					Catch ex As Exception
						Return False

					End Try
					EstadoVisibleControles(True)
					lstbxServicios.SelectedIndex = 0
					llenaDatosProyecto(lstbxServicios.SelectedValue)
				Else
					lstbxServicios.Items.Clear()
					lblMensajeCliente.Text = "No hay proyectos con este filtro de consulta."
					btnAnterior.Visible = False
					btnSiguiente.Visible = False
					EstadoVisibleControles(False)
					Return False
				End If
			Else
				lblMensajeCliente.Text = "Error en la consulta de Lista de proyectos. Inténtelo de nuevo."
				Return False
			End If
			DSConsulta = Nothing
			Return True
		Catch ex As Exception
			lblMensajeCliente.Text = "Ocurrió un error en la función llenListaProyecto. Inténtelo de nuevo"
			Return False
		End Try
	End Function

	Function llenaComboUsuarioMeta() As Boolean
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim DSConsulta As Data.DataSet
		Try
			DSConsulta = objOutsourcing.consultarUsuarioMeta()
			If DSConsulta.Tables(0).Columns.Count > 0 Then
				If DSConsulta.Tables(0).Rows.Count > 0 Then
					'Comunes.LlenaRadComboSiguienteEstatus(Me.rcmbUsuarioMeta, DSConsulta, "Todos")
					Dim i As Integer
					Try
						dpwUsuarioObjetivo.Items.Clear()

						For i = 0 To DSConsulta.Tables(0).Rows.Count - 1
							Dim item As New DropDownList()

							item.DataValueField = DSConsulta.Tables(0).Rows(i).Item(0)
							item.DataTextField = DSConsulta.Tables(0).Rows(i).Item(1)
							Dim stritem As String = item.DataTextField
							dpwUsuarioObjetivo.Items.Add(stritem)
							item.DataBind()
						Next


					Catch ex As Exception
					End Try


					dpwTipoServicio.SelectedIndex = -1
				Else
					lblMensajeCliente.Text = "No hay usuario meta en el catálogo de servicios."
					Return False
				End If
			Else
				lblMensajeCliente.Text = "Error en la consulta de Usuarios Meta. Inténtelo de nuevo."
				Return False
			End If
			DSConsulta = Nothing
			Return True
		Catch ex As Exception
			lblMensajeCliente.Text = "Ocurrió un error en la función llenaComboUsuarioMeta. Inténtelo de nuevo."
			Return False
		End Try
	End Function

	Function llenaComboTipoServicio() As Boolean
		'Dim objProyecto As New Proyecto
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Try
			Dim DSConsulta As Data.DataSet = objOutsourcing.consultarServicios()
			If DSConsulta.Tables(0).Columns.Count > 0 Then
				If DSConsulta.Tables(0).Rows.Count > 0 Then
					'Comunes.LlenaRadComboSiguienteEstatus(Me.rcmbTipoServicio, DSConsulta, "Todos")

					Dim i As Integer
					Try
						dpwTipoServicio.Items.Clear()

						For i = 0 To DSConsulta.Tables(0).Rows.Count - 1
							Dim item As New DropDownList()

							item.DataValueField = DSConsulta.Tables(0).Rows(i).Item(0)
							item.DataTextField = DSConsulta.Tables(0).Rows(i).Item(1)
							Dim stritem As String = item.DataTextField
							dpwTipoServicio.Items.Add(stritem)
							item.DataBind()
						Next


					Catch ex As Exception
					End Try

					dpwTipoServicio.SelectedIndex = -1
				Else
					lblMensajeCliente.Text = "No hay tipos de servicio capturados en el catálogo de servicios."
					Return False
				End If
			Else
				lblMensajeCliente.Text = "Error en la consulta de datos de Tipos de Servicio. Inténtelo de nuevo."
				Return False
			End If
			DSConsulta = Nothing
			Return True
		Catch ex As Exception
			lblMensajeCliente.Text = "Ocurrió un error en la función llenaComboTipoServicio. Inténtelo de nuevo."
			Return False
		End Try
	End Function

	Function llenaDatosProyecto(ByVal strIdProyecto As String) As Boolean
		'Dim objProyecto As New Proyecto
		Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim dsConsultaProyecto As Data.DataSet
		Try
			EstadoVisibleControles(False)
			'objProyecto.IdProyecto = strIdProyecto

			dsConsultaProyecto = objOutsourcing.ConsultaDatosProyectoCliente(strIdProyecto)
			If dsConsultaProyecto.Tables(0).Rows(0).Item("nombreTipoServicio").ToString() <> "" Then
				lblContenidoTipoServicio.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("nombreTipoServicio").ToString()
				lblContenidoTipoServicio.Visible = True
				lblTipoServicio.Visible = True 'clienteTipo
				hrContenidoTipoServicio.Visible = True
			End If

			If dsConsultaProyecto.Tables(0).Rows(0).Item("NombreProyecto").ToString() <> "" Then
				lblNombreProyecto.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("NombreProyecto").ToString()
				lblNombreProyecto.Visible = True
				hrContenidoNombreProyecto.Visible = True
			End If

			If dsConsultaProyecto.Tables(0).Rows(0).Item("Descripcion").ToString() <> "" Then
				lblContenidoDescripcionProyecto.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("Descripcion").ToString()
				lblDescripcionProyecto.Visible = True
				lblContenidoDescripcionProyecto.Visible = True
				hrContenidoDescripcionProyecto.Visible = True
			End If

			If dsConsultaProyecto.Tables(0).Rows(0).Item("Objetivo").ToString.Replace(Chr(13), "<br>") <> "" Then
				lblContenidoObjetivo.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("Objetivo").ToString.Replace(Chr(13), "<br>")
				lblContenidoObjetivo.Visible = True
				lblObjetivo.Visible = True
				hrContenidoObjetivo.Visible = True
			End If

			If dsConsultaProyecto.Tables(0).Rows(0).Item("Infraestrucutura").ToString.Replace(Chr(13), "<br>") <> "" Then
				lblContenidoInfraestructura.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("Infraestrucutura").ToString.Replace(Chr(13), "<br>")
				lblContenidoInfraestructura.Visible = True
				lblInfraestructura.Visible = True
				hrContenidoInfraestructura.Visible = True
			End If

			If dsConsultaProyecto.Tables(0).Rows(0).Item("ProductoFinal").ToString.Replace(Chr(13), "<br>") <> "" Then
				lblContenidoProductoFinal.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("ProductoFinal").ToString.Replace(Chr(13), "<br>")
				lblContenidoProductoFinal.Visible = True
				lblProductoFinal.Visible = True
				hrContenidoProductoFinal.Visible = True
			End If

			If dsConsultaProyecto.Tables(0).Rows(0).Item("Duración").ToString.Replace(Chr(13), "<br>") <> "" Then
				lblContenidoDuracion.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("Duración").ToString.Replace(Chr(13), "<br>")
				lblContenidoDuracion.Visible = True
				lblDuracion.Visible = True
				hrContenidoDuracion.Visible = True
			End If

			'rbimgInfraestructura.Visible = False


			If dsConsultaProyecto.Tables(0).Rows(0).Item("LiderProyecto").ToString() <> "" Then
				lblContenidoLider.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("LiderProyecto").ToString() & " <br />"
				lblContenidoTelefono.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("TelefonoLiderProyecto").ToString() & " <br />"
				lblContenidoCorreo.Text = dsConsultaProyecto.Tables(0).Rows(0).Item("correoLiderProyecto").ToString()

				lblContenidoLider.Visible = True
				lblLider.Visible = True
				lblCorreo.Visible = True
				lblContenidoTelefono.Visible = True
				lblContenidoCorreo.Visible = True
			End If
			Return True
		Catch ex As Exception
			EstadoVisibleControles(False)
			lblMensajeCliente.Text = "Error al cargar los datos del proyecto. Inténtelo de nuevo."
			Return False
		End Try
	End Function

	Protected Sub EstadoVisibleControles(ByVal binEstadoVisible As Boolean)
		'lblClienteTipoServicio.Visible = binEstadoVisible
		lblNombreProyecto.Visible = binEstadoVisible
		lblDescripcionProyecto.Visible = binEstadoVisible
		lblObjetivo.Visible = binEstadoVisible
		lblInfraestructura.Visible = binEstadoVisible
		lblProductoFinal.Visible = binEstadoVisible
		lblDuracion.Visible = binEstadoVisible
		lblLider.Visible = binEstadoVisible
		lblCorreo.Visible = binEstadoVisible

		'lblContenidoTipoServicio.Visible = binEstadoVisible
		lblContenidoNombreProyecto.Visible = binEstadoVisible
		lblContenidoObjetivo.Visible = binEstadoVisible
		lblContenidoInfraestructura.Visible = binEstadoVisible
		lblContenidoProductoFinal.Visible = binEstadoVisible
		lblContenidoDuracion.Visible = binEstadoVisible
		'rbimgInfraestructura.Visible = binEstadoVisible
		lblContenidoLider.Visible = binEstadoVisible
		lblContenidoTelefono.Visible = binEstadoVisible
		lblContenidoCorreo.Visible = binEstadoVisible
		lblContenidoDescripcionProyecto.Visible = binEstadoVisible

		'lblContenidoTipoServicio.Text = ""
		lblContenidoNombreProyecto.Text = ""
		lblContenidoObjetivo.Text = ""
		lblContenidoInfraestructura.Text = ""
		lblContenidoProductoFinal.Text = ""
		lblContenidoDuracion.Text = ""
		'rbimgInfraestructura.ResolveUrl("")
		lblContenidoLider.Text = ""
		lblContenidoTelefono.Text = ""
		lblContenidoCorreo.Text = ""
		lblContenidoDescripcionProyecto.Text = ""

		hrContenidoInfraestructura.Visible = binEstadoVisible
		hrContenidoNombreProyecto.Visible = binEstadoVisible
		hrContenidoObjetivo.Visible = binEstadoVisible
		hrContenidoProductoFinal.Visible = binEstadoVisible
		hrContenidoDuracion.Visible = binEstadoVisible
		'hrContenidoTipoServicio.Visible = binEstadoVisible
		hrContenidoDescripcionProyecto.Visible = binEstadoVisible
	End Sub

	Private Sub lstbxServicios_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lstbxServicios.SelectedIndexChanged
		If llenaDatosProyecto(lstbxServicios.SelectedValue) Then
			ViewState("idIndex") = lstbxServicios.SelectedIndex
		End If
	End Sub
End Class