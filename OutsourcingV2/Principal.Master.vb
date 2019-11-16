Public Class Principal
	Inherits System.Web.UI.MasterPage

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Not IsPostBack Then
			Dim dsUsuario As Data.DataSet
			Dim strCadenaPermisos As String
			Dim strCaracter As String
			Try
				dsUsuario = CType(Session("DatosUsuario"), DataSet)
				Dim strNombreUsuario As String = dsUsuario.Tables(0).Rows(0).Item(5)
				lblUsuario.Text = strNombreUsuario
				strCadenaPermisos = dsUsuario.Tables(0).Rows(0).Item("Permisos").ToString
				For i = 1 To strCadenaPermisos.Length - 1
					strCaracter = Mid(strCadenaPermisos, i, 1)
					If strCaracter = "1" Then
						'Me.radmMenu.Items.Item(i - 1).Enabled = True
					Else
						'Me.radmMenu.Items.Item(i - 1).Enabled = False
					End If
				Next
				'dsUsuario = Session("datosUsuario")
				'Select Case dsUsuario.Tables(0).Rows(0).Item(5).ToString
				'    Case "1111" 'En el Menu se habilitan todos los Menus solo el Administrador puede tener acceso
				'        HabilitarDeshabilitarMenus(True)
				'        Me.radmMenu.FindItemByText("Administrar Usuarios").Enabled = True
				'    Case "0111" 'En el Menu se habilitan todos los Menus y SubMenus excepto Administracion  de Usuarios
				'        HabilitarDeshabilitarMenus(True)
				'    Case "0101"  'En el menu se habilita el de alta proyecto.
				'        HabilitarDeshabilitarMenus(True)
				'        Me.radmMenu.FindItemByText("Revisión Proyecto").Enabled = False
				'    Case Else
				'        HabilitarDeshabilitarMenus(False)
				'End Select

			Catch ex As Exception
				ex = Nothing
				Response.Redirect("LoginGeneral.aspx")
			End Try
		End If
	End Sub

End Class