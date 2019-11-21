<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Externos.Master" CodeBehind="CatalogoServicos.aspx.vb" Inherits="OutsourcingV2.CatalogoServicos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<h1 class=" text-info text-center">SERVICIOS PROPORCIONADOS POR FES ACÁTLAN</h1>
			</div>
		</div>

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
				<div class="row">
				</div>
				<div class="row">
					<asp:Button ID="btnConsultarProyecto" runat="server" Text="Buscar Servicio" Class="btn-primary" />
					<br />
				</div>
			</div>

		</div>
		<br />
		<div class="row">
			<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12" aria-multiline="True">
				<asp:ListBox ID="lstbxServicios" runat="server" Height="700" Width="350px" AutoPostBack="true" CssClass="border-secondary"></asp:ListBox>
				<br />
				<asp:Button ID="btnAnterior" runat="server" Text="anterior" Class="btn-primary" />
				<asp:Button ID="btnSiguiente" runat="server" Text="Siguiente" Class="btn-primary" />
			</div>
			<div class="col-xl-1 col-lg-2  col-sm-1 col-sm-1 "></div>
			<div class="col-xl-8 col-lg-7 col col-md-6 col-sm-12">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col col-md-12 col-sm-12">
						<br />


						<div class="panel-default">
							<div class="panel-heading">
								<h3>Datos Servicio</h3>
								<asp:Label ID="lblMensajeCliente" runat="server" Text=""></asp:Label>
							</div>
							<div class="panel-body">
								<br />
								<asp:Label ID="lblNombreProyecto" runat="server" Text=" "></asp:Label>
								<br />
								<asp:Label ID="lblTipoServicio" runat="server" Text="TipoServicio"></asp:Label>
								<br />
								
								<asp:Label ID="lblContenidoTipoServicio" runat="server" Text="Nombre"></asp:Label><hr id="hrContenidoTipoServicio" runat="server" width="350px" />
							 
								<hr id="hrContenidoNombreProyecto" runat="server" width="350px" />
								<asp:Label ID="lblContenidoNombreProyecto" runat="server" Text="Nombre"></asp:Label>
								<br />
								<asp:Label ID="lblDescripcionProyecto" runat="server" Text="Descripción"></asp:Label> 
								<hr id="hrContenidoDescripcionProyecto" runat="server" height="100px" width="350" />
								<asp:Label ID="lblContenidoDescripcionProyecto" runat="server" Text="Descripción"></asp:Label>
								<br />
								<asp:Label ID="lblObjetivo" runat="server" Text="Objetivo"></asp:Label> 
								<hr id="hrContenidoObjetivo" runat="server" width="350px" height="80" />
								<asp:Label ID="lblContenidoObjetivo" runat="server" Text="Objetivo"></asp:Label>

								<asp:Label ID="lblInfraestructura" runat="server" Text="Infraestructura"></asp:Label> 
								<hr id="hrContenidoInfraestructura" runat="server" width="350px" height="80" />
								<asp:Label ID="lblContenidoInfraestructura" runat="server" Text="Objetivo"></asp:Label>
								<br />
								<asp:Label ID="lblProductoFinal" runat="server" Text="Producto Final"></asp:Label> 
								<hr id="hrContenidoProductoFinal" runat="server" width="350px" height="80" />
								<asp:Label ID="lblContenidoProductoFinal" runat="server" Text="Producto Final"></asp:Label>
								<br />
								<asp:Label ID="lblDuracion" runat="server" Text="Duración"></asp:Label> 
								<hr id="hrContenidoDuracion" runat="server" width="350px" height="40" />
								<asp:Label ID="lblContenidoDuracion" runat="server" Text="Duración"></asp:Label>
								<br />


							</div>
							<div class="panel-heading">
								<h3>Contacto</h3>
								<br />
							</div>
							<div class="panel-body">
								<asp:Label ID="lblLider" runat="server" Text="Lider"></asp:Label> 
								<hr id="hrContenidoLider" runat="server" width="350px" height="40" />
								<asp:Label ID="lblContenidoLider" runat="server" Text="Lider"></asp:Label>
								<br />
								<asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label> 
								<hr id="hrContenidoTelefono" runat="server" width="350px" height="40" />
								<asp:Label ID="lblContenidoTelefono" runat="server" Text="Teléfono"></asp:Label>
								<br />
								<asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label> 
								<hr id="hrContenidoCorreo" runat="server" width="350px" height="40" />
								<asp:Label ID="lblContenidoCorreo" runat="server" Text="Correo"></asp:Label>
								<br />
			 
								<asp:Button ID="btnContacto" runat="server" class="btn-primary" Text= "Solicitar Servicio" />


							</div>
						</div>

					</div>

				</div>

			</div>
		</div>
	</div>

	<br />
	<br />
	<br />
	
</asp:Content>



