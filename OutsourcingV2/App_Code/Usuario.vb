Public Class Usuario
#Region "Variables"

#End Region

#Region "properity"

#End Region

#Region "metodos"
	Function CalculaMD5(ByVal cadena As String) As String
		'CALCULO EL HASH DE LA CLAVE INTRODUCIDA CON MD5
		Dim md5 As New System.Security.Cryptography.MD5CryptoServiceProvider
		Dim bytValue() As Byte
		Dim bytHash() As Byte
		Dim sb As System.Text.StringBuilder = New System.Text.StringBuilder(32)
		Dim i As Integer
		bytValue = System.Text.Encoding.UTF8.GetBytes(cadena)
		bytHash = md5.ComputeHash(bytValue)
		md5.Clear()
		Dim str As String = ""

		'bytHash SIEMPRE DEVUELVE PAREJAS DE CARACTERES QUE VOY CONCATENANDO
		For i = 0 To bytHash.Length - 1
			str = bytHash(i).ToString("x2")
			sb.Append(str)
		Next
		'DEVUELVO LA CADENA MD5
		Return sb.ToString
	End Function

	Public Shared Function LlenaDropdownList(ByVal cmb As DropDownList, ByVal Ds As Data.DataSet) As Boolean
		Dim i As Integer
		Try
			cmb.Items.Clear()

			For i = 0 To Ds.Tables(0).Rows.Count - 1
				Dim item As New DropDownList()

				item.DataValueField = Ds.Tables(0).Rows(i).Item(0)
				item.DataTextField = Ds.Tables(0).Rows(i).Item(1)
				Dim stritem As String = item.DataTextField
				cmb.Items.Add(stritem)
				item.DataBind()
			Next
			Return True

		Catch ex As Exception
			Return False

		End Try


	End Function
#End Region
End Class
