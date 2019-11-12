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
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active" id="nav-Buscar-tab" data-toggle="tab" href="#navBuscar" role="tab" aria-controls="nav-home" aria-selected="true">Buscar</a>
						<a class="nav-item nav-link" id="nav-AgregarPersona-tab" data-toggle="tab" href="#navAgregarPersona" role="tab" aria-controls="nav-profile" aria-selected="false">Agregar Persona</a>
						<a class="nav-item nav-link" id="nav-AgregarUsuario-tab" data-toggle="tab" href="#navAgregarUsuario" role="tab" aria-controls="nav-contact" aria-selected="false">Agregar Usuario</a>
						<a class="nav-item nav-link" id="nav-Usuarios-tab" data-toggle="tab" href="#navUsuarios" role="tab" aria-controls="nav-about" aria-selected="false">Usuarios*</a>
					</div>
				</nav>
				<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
					<div class="tab-pane fade show active" id="navBuscar" role="tabpanel" aria-labelledby="nav-home-tab">
					  Buscar persona
							<br /><br />
							<label> RFC </label>
							<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							<asp:Button ID="Button1" runat="server" Text="Buscar" />
							<br /><br />
						</div>
					<div class="tab-pane fade" id="navAgregarPersona" role="tabpanel" aria-labelledby="nav-profile-tab">
							Añadir persona
						<br /><br />
						 <label> A. Paterno </label>
						 <asp:TextBox ID="txtAPaterno" runat="server"></asp:TextBox>
						 <label>A. Materno  </label>
						 <asp:TextBox ID="txtAMaterno" runat="server"></asp:TextBox><br /><br />
						 <label> Nombre </label>
						 <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br /><br />
						 <label> Calle </label>
						 <asp:TextBox ID="txtCalle" runat="server"></asp:TextBox>
						 <label> C.P. </label>
						 <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
						<asp:Button ID="btnbuscarcp" runat="server" Text="Buscar" />
						 <label> Colonia </label>
						 <asp:TextBox ID="txtcolonia" runat="server"></asp:TextBox><br /><br />
						 <label> Correo</label>
						 <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
						 <label> Telefono </label>
						 <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
						 <label> Celular </label>
						 <asp:TextBox ID="txtcelular" runat="server"></asp:TextBox>
						<br /><br />
						<asp:Button ID="btnagregar" runat="server" Text="Agregar" Width="150px"/>
						<br /><br />
						<asp:Button ID="btncancelar" runat="server" Text="Cancelar" Width="150px" />
						<br /><br />
					
						</div>
					<div class="tab-pane fade" id="navAgregarUsuario" role="tabpanel" aria-labelledby="nav-contact-tab">
						Añadir usuario
						<br /><br />
						<label>Usuario</label>
						<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
						<label>contraseña</label>
						<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
						<label>Confirmación</label>
						<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
						<label>Tipo de usuario</label>
						<asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList><br /><br />
						<label>Adscripción</label>
						<asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList><br /><br />
						<asp:Button ID="Button2" runat="server" Text="Dar alta" /><br /><br />
						<asp:Button ID="Button3" runat="server" Text="cancelar" />
						</div>

					</div>
					<div class="tab-pane fade" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">

					</div>
				</div>
			
			</div>
		</div>
	</div>
</section>

</asp:Content>
