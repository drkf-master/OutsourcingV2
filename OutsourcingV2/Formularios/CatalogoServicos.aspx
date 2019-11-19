<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="CatalogoServicos.aspx.vb" Inherits="OutsourcingV2.CatalogoServicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<br />
	<br />
	<div class="container-fluid">

		<div class="Row">

			<div class="col">
				<div class="row">
					<asp:Label ID="lblClienteTipoServicio" runat="server" Text="Tipos de servicio"></asp:Label>
				</div>
				<div class="row">
					<asp:DropDownList ID="dpwTipoServicio" runat="server"></asp:DropDownList>
				</div>
			</div>
			<div class="col">
				<div class="row">
					<asp:Label ID="lblClienteUsuarioObjetivo" runat="server" Text="Usuarios Meta"></asp:Label>
				</div>
				<div class="row">
					<asp:DropDownList ID="dpwUsuarioObjetivo" runat="server"></asp:DropDownList>
				</div>
			</div>
			<div class="col">
				<div class="row"></div>
				<div class="row">
					<asp:Button ID="btnConsultarProyecto" runat="server" Text="Buscar Servicio" />
					<br />
				</div>
			</div>

		</div>

		<div class="row">
			<div class="col-3" aria-multiline="True">
				<asp:ListBox ID="lstbxServicios" runat="server" Height="700px" Width="350px" AutoPostBack="true"></asp:ListBox>
				<br />
				<asp:Button ID="btnAnterior" runat="server" Text="anterior" />
				<asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" />
			</div>

			<div class="col-9">
				<div class="row">


					<div class="col-xl-4 col-sm-2"></div>
					<div class="col-xl-4 col-sm-8">
						<h2 class="center">SERVICIOS PROPORCIONADOS POR ACÁTLAN</h2>

						<div class="r">
						</div>


						&nbsp;
                &nbsp;
                &nbsp;
        
         <br />

						&nbsp;
                &nbsp;
                &nbsp;
        
                 &nbsp;
                &nbsp;
        
            <br />


						&nbsp;
                &nbsp;
          <h3>Datos Servicio</h3>
						<asp:Label ID="lblMensajeCliente" runat="server" Text=""></asp:Label>
						<br />
						<asp:Label ID="lblNombreProyecto" runat="server" Text="Nombre"></asp:Label>
						<br />
						<hr id="hrContenidoNombreProyecto" runat="server" width="350px" />
						<asp:Label ID="lblContenidoNombreProyecto" runat="server" Text="Nombre"></asp:Label>
						<br />
						<asp:Label ID="lblDescripcionProyecto" runat="server" Text="Descripción"></asp:Label>
						<br />
						<hr id="hrContenidoDescripcionProyecto" runat="server" height="100px" width="350" />
						<asp:Label ID="lblContenidoDescripcionProyecto" runat="server" Text="Descripción"></asp:Label>
						<br />
						<asp:Label ID="lblObjetivo" runat="server" Text="Objetivo"></asp:Label>
						<br />
						<hr id="hrContenidoObjetivo" runat="server" width="350px" height="80" />
						<asp:Label ID="lblContenidoObjetivo" runat="server" Text="Objetivo"></asp:Label>

						<asp:Label ID="lblInfraestructura" runat="server" Text="Infraestructura"></asp:Label>
						<br />
						<hr id="hrContenidoInfraestructura" runat="server" width="350px" height="80" />
						<asp:Label ID="lblContenidoInfraestructura" runat="server" Text="Objetivo"></asp:Label>
						<br />
						<asp:Label ID="lblProductoFinal" runat="server" Text="Producto Final"></asp:Label>
						<br />
						<hr id="hrContenidoProductoFinal" runat="server" width="350px" height="80" />
						<asp:Label ID="lblContenidoProductoFinal" runat="server" Text="Producto Final"></asp:Label>
						<br />
						<asp:Label ID="lblDuracion" runat="server" Text="Duración"></asp:Label>
						<br />
						<hr id="hrContenidoDuracion" runat="server" width="350px" height="40" />
						<asp:Label ID="lblContenidoDuracion" runat="server" Text="Duración"></asp:Label>
						<br />

						<h3>Contacto</h3>
						<br />
						<asp:Label ID="lblLider" runat="server" Text="Lider"></asp:Label>
						<br />
						<hr id="hrContenidoLider" runat="server" width="350px" height="40" />
						<asp:Label ID="lblContenidoLider" runat="server" Text="Lider"></asp:Label>
						<br />
						<asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
						<br />
						<hr id="hrContenidoTelefono" runat="server" width="350px" height="40" />
						<asp:Label ID="lblContenidoTelefono" runat="server" Text="Teléfono"></asp:Label>
						<br />
						<asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
						<br />
						<hr id="hrContenidoCorreo" runat="server" width="350px" height="40" />
						<asp:Label ID="lblContenidoCorreo" runat="server" Text="Correo"></asp:Label>
						<br />
						<asp:Button ID="btnContacto" runat="server" Text="Button" />


					</div>
					<div class="col-xl-4 col-sm-2"></div>

				</div>
			</div>
		</div>

		<br />
		<br />
		<br />
	</div>
</asp:Content>



