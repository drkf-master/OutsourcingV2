<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="CatalogoServicos.aspx.vb" Inherits="OutsourcingV2.CatalogoServicos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
	<br />
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-4 col-sm-2"></div>
			<div class="col-xl-4 col-sm-8">
    <h2 class="center"> SERVICIOS PROPORCIONADOS POR ACÁTLAN</h2>
        <asp:Label ID="lblTipoServicio" runat="server" Text="Tipos de servicio"></asp:Label>
                 &nbsp;
                &nbsp;
                &nbsp;
        <asp:Label ID="lblUsuarioMeta" runat="server" Text="Usuarios Meta"></asp:Label>
         <br />
        <asp:DropDownList ID="dpwTipoServicio" runat="server"></asp:DropDownList>
               &nbsp;
                &nbsp;
                &nbsp;
        <asp:DropDownList ID="dpwUsuarioObjetivo" runat="server"></asp:DropDownList>
                 &nbsp;
                &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Buscar Servicio" />
            <br />
                <asp:ListBox ID="lstbxServicios" runat="server" Height="100" Width="50"></asp:ListBox>
                  &nbsp;
                &nbsp;
          <h3>  Datos Servicio</h3>
                <br />
                 <asp:Label ID="lblProyecto" runat="server" Text="Nombre"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBxNombreProyecto" runat="server" Width="350px"></asp:TextBox>
                                <br />
                 <asp:Label ID="lblDescripcionProyecto" runat="server" Text="Descripción"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" Height="100px" Width="350"></asp:TextBox>
                                <br />
                  <asp:Label ID="lblObjetivo" runat="server" Text="Objetivo"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtObjetivo" runat="server" Width="350px" Height="80"></asp:TextBox>
                                <br />
                  <asp:Label ID="lblInfraestructura" runat="server" Text="Infraestructura"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtInfraestructura" runat="server" Width="350px" Height="80"></asp:TextBox>
                                <br />
                  <asp:Label ID="lblProductoFinal" runat="server" Text="Producto Final"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtProductoFinal" runat="server" Width="350px" Height="80"></asp:TextBox>
                                <br />
                  <asp:Label ID="lblDuracion" runat="server" Text="Duración"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtDuracion" runat="server" Width="350px" Height="40"></asp:TextBox>
                                <br />

              <h3> Contacto</h3>
                <br />
                <asp:Label ID="lblLider" runat="server" Text="Lider"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtLider" runat="server" Width="350px" Height="40"></asp:TextBox>
                                <br />
                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtTelefono" runat="server" Width="350px" Height="40"></asp:TextBox>
                                <br />
                <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtCorreo" runat="server" Width="350px" Height="40"></asp:TextBox>
                                <br />


                </div>
			<div class="col-xl-4 col-sm-2"></div>

		</div>
	</div>
    </asp:Content>



