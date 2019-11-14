Public Class LoginGeneral
	Inherits System.Web.UI.Page


	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

	Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click

        ' este codigo solo es  prueba de los webservices 
        Dim objOutsourcing As New WSOutsourcing.OutsourcingSoapClient
		Dim Encripta As New Usuario
		Dim strResultado As String
		Dim Usuario As String = Replace(Trim(txtNombreUsuario.Text), "'", "''")
		Dim Password As String = Encripta.CalculaMD5(txtPassword.Text)
		strResultado = objOutsourcing.ValidarUsuario(Usuario, Password)

        If IsNumeric(strResultado) Then
            If CInt(strResultado) > 0 Then

                'Dim dsConsultaUsuario As Data.DataSet = objOutsourcing.ConsultarDatosUsuario(strResultado)


                Response.Redirect("PaginaPrincipal.aspx")
            Else
                Me.lblMensajeError.Text = "El usuario no es válido. Inténtelo de nuevo."
            End If
        Else

        End If
	End Sub

    Protected Sub txtNombreUsuario_TextChanged(sender As Object, e As EventArgs) Handles txtNombreUsuario.TextChanged

    End Sub
End Class