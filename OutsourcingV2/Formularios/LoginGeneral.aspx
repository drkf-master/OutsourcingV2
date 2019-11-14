<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Externos.Master" CodeBehind="LoginGeneral.aspx.vb" Inherits="OutsourcingV2.LoginGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br />
	<br />
	<div class="container-fluid">
		<div class="row">
			<div class="col-xl-4 col-sm-2"></div>
			<div class="col-xl-4 col-sm-8">

				<h3 class="text-center">inicio de sesión</h3>
				<div class="table">

					<div class="row">
					</div>

					<asp:Label ID="lblUsuario" runat="server" Text=" Nombre de Usuario:" class="content-center"></asp:Label>
					<br />
					<asp:TextBox ID="txtNombreUsuario" runat="server" Class="form-control mx-xs-3"></asp:TextBox>
					<br />
					<asp:RequiredFieldValidator ID="reqNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Ingresa tu nombre de usuario por favor." Class="text-danger"></asp:RequiredFieldValidator>
					<br />
					<br />
					<asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
					<br />
					<asp:TextBox type="Password" ID="txtPassword" runat="server" Class="form-control mx-xs-3"></asp:TextBox>
					<br />
					<asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Ingresa tu Contraseña por favor." Class="text-danger"></asp:RequiredFieldValidator>
					<br />
					<br />
					<div class="align-content-center">
						<asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="150px" class="btn btn-primary btn-block" />
						<asp:Label ID="lblMensajeError" runat="server" ForeColor="Red"></asp:Label>

					</div>

				</div>



			</div>
			<div class="col-xl-4 col-sm-2"></div>

		</div>
	</div>
</asp:Content>
