<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaUsuario.aspx.vb" Inherits="OutsourcingV2.AltaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section id="tabs">
		<div class="container">
			<h6 class="section-title h1 text-center ">Alta de usuario</h6>
			<div class="row">
				<div class="col-xs-12 ">
					<nav>
						<div class="nav nav-tabs nav-fill navbar-dark" id="na-vtab" role="tablist">
							<a class="nav-item nav-link" id="nav-Buscar-tab" data-toggle="tab" href="#navBuscar" role="tab" aria-controls="nav-home" aria-selected="true">Buscar</a>
							<a class="nav-item nav-link" id="nav-AgregarPersona-tab" data-toggle="tab" href="#navAgregarPersona" role="tab" aria-controls="nav-profile" aria-selected="false">Agregar Persona</a>
							<a class="nav-item nav-link" id="nav-AgregarUsuario-tab" data-toggle="tab" href="#navAgregarUsuario" role="tab" aria-controls="nav-contact" aria-selected="false">Agregar Usuario</a>
							<a class="nav-item nav-link" id="nav-Usuarios-tab" data-toggle="tab" href="#navUsuarios" role="tab" aria-controls="nav-about" aria-selected="false">Usuarios*</a>
						</div>
					</nav>
					<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
						<div class="tab-pane fade " id="navBuscar" role="tabpanel" aria-labelledby="nav-home-tab">
							<div class="table-bordered">
								<div class="row">
									<div class="col-4"></div>
									<div class="col-4">
										<div class="align-content-center">
											<div class="label text-info">Buscar persona </div>
											<br />
											<br />
											<label class="justify-content-center">RFC: </label>
											<br />
											<asp:TextBox ID="txtRfc" runat="server"></asp:TextBox>
											<asp:RegularExpressionValidator class="text-danger" ID="reqRfc" runat="server" ControlToValidate="txtRFC"
												ErrorMessage="El RFC está mal escrito" SetFocusOnError="true" ValidationExpression="^\D{4}\d{6}"
												ValidationGroup="gpoBuscarPersona"></asp:RegularExpressionValidator>
											<br />
											<label>Homoclave: </label>
											<br />
											<asp:TextBox ID="txtHomoclave" runat="server"></asp:TextBox>
											<br />
											<br />

											<asp:Button ID="btnBuscarPersona" runat="server" Text="Buscar" class="btn-primary" Width="128px" />
											<asp:RequiredFieldValidator ID="reqPersona" runat="server" ControlToValidate="txtRFC"
												ErrorMessage="El RFC es obligatorio" ValidationGroup="gpoBuscarPersona"></asp:RequiredFieldValidator>
											<asp:Label ID="lblBuscarPersonaMensaje" runat="server" ForeColor="Red"></asp:Label>
											<br />
										</div>
									</div>
									<div class="col-4"></div>

								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="navAgregarPersona" role="tabpanel" aria-labelledby="nav-profile-tab">
							<div class="table-bordered">
								<div class="row">
									<div class="col-2"></div>
									<div class="col-8">
										<div class="label text-info">Agregar Persona </div>
										<div class="row">
											<asp:Label ID="lblApellidoPaterno" runat="server" Text="A. Paterno:"></asp:Label>
											<asp:TextBox ID="txtApellidoPaterno" runat="server"></asp:TextBox>
											<asp:Label ID="lblApellidoMaterno" runat="server" Text="A.Materno:"></asp:Label>
											<asp:TextBox ID="txtApellidoMaterno" runat="server"></asp:TextBox><br />
											<br />
										</div>
										<div class="row">
											<asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
											<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
											<br />
										</div>
										<div class="row">
											<asp:Label ID="lblCP" runat="server" Text="C.P."></asp:Label>
											<asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
											<asp:Button ID="btnBuscarColonia" runat="server" Text="Buscar" />
											<asp:Label ID="lblColonia" runat="server" Text="Colonia"></asp:Label>
											<asp:DropDownList ID="drpColonia" runat="server"></asp:DropDownList>
											<br />
											<asp:Label ID="lblColoniaMensaje" runat="server" Text="Label"></asp:Label>
										</div>
										<div class="row">
											<asp:Label ID="lblCalle" runat="server" Text="Calle:"></asp:Label>
											<asp:TextBox ID="txtCalle" runat="server"></asp:TextBox>
										</div>
										<div class="row">
											<asp:Label ID="lblCorreo" runat="server" Text="Correo:"></asp:Label>
											<asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
										</div>
										<div class="row">
											<asp:Label ID="lblTelefono" runat="server" Text="Telefono:"></asp:Label>
											<asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
										</div>
										<div class="row">
											<asp:Label ID="lblCelular" runat="server" Text="Celular:"></asp:Label>
											<asp:TextBox ID="txtCelular" runat="server"></asp:TextBox>
										</div>
										<div class="row">
											<br />
											<br />
											<asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="150px" />
											<br />
											<br />
											<asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="150px" />
											<br />
											<br />
										</div>
									</div>
									<div class="col-2"></div>
								</div>
							</div>
						</div>

						<div class="tab-pane fade" id="navAgregarUsuario" role="tabpanel" aria-labelledby="nav-contact-tab">
							<div class="label text-info">Agregar Usuario </div>

							<asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
							<asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox><br />
							<br />
							<asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
							<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
							<br />
							<asp:Label ID="lblConfirmPassword" runat="server" Text="Confirmar Contraseña"></asp:Label>
							<asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox><br />
							<br />
							<asp:Label ID="lblListTipoPerfil" runat="server" Text="Tipo de Usuario:"></asp:Label>
							<asp:DropDownList ID="drpListTipoPerfil" runat="server"></asp:DropDownList><br />
							<br />
							<asp:Label ID="lblListAdscripcion" runat="server" Text="Adscripcion"></asp:Label>
							<asp:DropDownList ID="drpListAdscripcion" runat="server"></asp:DropDownList><br />
							<br />
							<asp:Button ID="btnAltaUsuario" runat="server" Text="Dar alta" /><br />
							<br />
							<asp:Button ID="btnCancelarAltaUsuario" runat="server" Text="cancelar" />
						</div>


						<div class="tab-pane fade" id="navUsuarios" role="tabpanel" aria-labelledby="nav-about-tab">
							<div class="label text-info">Usuarios del Sistema</div>
							<asp:GridView ID="grdUsuariosSistema" runat="server" Class="table-responsive table-striped table-bordered-primary table-hover " BorderStyle="Outset" scrollbar="true"> </asp:GridView>
						</div>
					</div>
				</div>

			</div>
		</div>

	</section>

</asp:Content>
