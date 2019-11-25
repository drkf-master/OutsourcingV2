Public Class AltaServicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("datosUsuario") Is Nothing Then
                Session("url") = Nothing
                Response.Redirect("LoginGeneral.aspx")
            End If

            If llenaListaServicios() Then
                If llenaListaUsuarioObjetivo() Then
                    llenaListaAdscripcion()
                Else
                    Exit Sub
                End If
            Else
                Exit Sub
            End If
        Else
            lblDatosServicioMensaje.Text = ""
        End If
        If Session("datosUsuario") Is Nothing Then
            Session("url") = Nothing
            Response.Redirect("LoginGeneral.aspx")
        End If
    End Sub

    Private Sub btnCancelarProyecto_Init(sender As Object, e As EventArgs) Handles btnCancelarProyecto.Click
        txtNombreProyecto.Text = ""
        txtDescripcionProyecto.Text = ""
        txtObjetivoProyecto.Text = ""
        txtBeneficiosProyecto.Text = ""
        txtRecursosHumanosProyecto.Text = ""
        txtInfraesctructraProyecto.Text = ""
        txtTiempoProyecto.Text = ""
        txtLiderProyecto.Text = ""
        txtCorreoElectronico.Text = ""
        txtTelefono.Text = ""
    End Sub

    Private Sub btnGuardarProyecto_Click(sender As Object, e As EventArgs) Handles btnGuardarProyecto.Click
        Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
        Dim strInsertaDatos As String
        Dim TipoServicio As String
        Dim UsuarioObjetivo As String
		UsuarioObjetivo = dpwUsuarioObjetivo.Text
		'TipoServicio = pwTipoServicio.Text
		'faltan parametros
		' strInsertaDatos = objOutsourcing.insertaProyecto("null", TipoServicio, UsuarioObjetivo, txtNombreProyecto.Text, txtDescripcionProyecto.Text, txtObjetivoProyecto.Text, txtInfraesctructraProyecto.Text, txtRecursosHumanosProyecto.Text, txtBeneficiosProyecto.Text,, txtTiempoProyecto.Text,)
	End Sub


    Protected Function llenaListaUsuarioObjetivo() As Boolean
        Try
            'Dim objProyecto As New Proyecto
            Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
            Dim DSConsulta As Data.DataSet
            DSConsulta = objOutsourcing.consultarUsuarioMeta()
            If DSConsulta.Tables(0).Rows.Count > 0 Then
                'Comunes.LlenaRadLista(Me.rlbxUsuarioMetaInicio, DSConsulta)
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
            Else
                lblDatosServicioMensaje.Text = "No hay Usuarios Meta o el servidor no esta en servicio."
                Return False
            End If
            DSConsulta = Nothing
            Return True
        Catch ex As Exception
            lblDatosServicioMensaje.Text = ex.ToString
            Return False
        End Try
    End Function

    Protected Function llenaListaServicios() As Boolean
        Try
            'Dim objProyecto As New Proyecto
            Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
            Dim DSConsulta As Data.DataSet
            DSConsulta = objOutsourcing.consultarServicios()
            If DSConsulta.Tables(0).Rows.Count > 0 Then
                'Se utiliza esta procedimiento por que es el mismo llenado que el de adscripción
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
            Else
                'mvwDatosProyecto.ActiveViewIndex = 0
                lblDatosServicioMensaje.Text = "No hay Tipos de Servicios o el Servidor no está en servicio."
                Return False
            End If
            DSConsulta = Nothing
            Return True
        Catch ex As Exception
            'mvwDatosProyecto.ActiveViewIndex = 0
            lblDatosServicioMensaje.Text = ex.ToString
            Return False
        End Try
    End Function

    Protected Function llenaListaAdscripcion() As Boolean
        Try
            'Dim objProyecto As New Proyecto
            Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
            Dim DSConsulta As Data.DataSet
            DSConsulta = objOutsourcing.consultarServicios()
            If DSConsulta.Tables(0).Rows.Count > 0 Then
                'Se utiliza esta procedimiento por que es el mismo llenado que el de adscripción
                Dim i As Integer
                Try
                    drpAdscripcion.Items.Clear()

                    For i = 0 To DSConsulta.Tables(0).Rows.Count - 1
                        Dim item As New DropDownList()

                        item.DataValueField = DSConsulta.Tables(0).Rows(i).Item(0)
                        item.DataTextField = DSConsulta.Tables(0).Rows(i).Item(1)
                        Dim stritem As String = item.DataTextField
                        drpAdscripcion.Items.Add(stritem)
                        item.DataBind()
                    Next


                Catch ex As Exception
                End Try
            Else
                'mvwDatosProyecto.ActiveViewIndex = 0
                lblDatosServicioMensaje.Text = "No hay Tipos de Servicios o el Servidor no está en servicio."
                Return False
            End If
            DSConsulta = Nothing
            Return True
        Catch ex As Exception
            'mvwDatosProyecto.ActiveViewIndex = 0
            lblDatosServicioMensaje.Text = ex.ToString
            Return False
        End Try
    End Function
End Class