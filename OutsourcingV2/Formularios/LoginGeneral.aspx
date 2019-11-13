<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Externos.Master" CodeBehind="LoginGeneral.aspx.vb" Inherits="OutsourcingV2.LoginGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="text-center"> inicio de sesión</h3>
    <div class="container">
		<div class="justify-content-center justify-content-md-start">
        <label for=" Usuario"> usuario: </label>
	
        <br />
        <asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
			<br />
         <asp:RequiredFieldValidator ID="reqNombreUsuario" runat="server" controltovalidate="txtNombreUsuario" ErrorMessage="Ingresa tu nombre de usuario por favor." Class="text-danger"></asp:RequiredFieldValidator>
         <br /><br />
         <label for=" Contraseña"> contraseña: </label>
         <br />
         <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
			<br />
		<asp:RequiredFieldValidator ID="reqPassword" runat="server" controltovalidate="txtPassword" ErrorMessage="Ingresa tu Contraseña por favor." Class="text-danger"></asp:RequiredFieldValidator>
		<br /><br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="150px" />
		<asp:Label ID="lblMensajeError" runat="server" ForeColor="Red"></asp:Label>
	</div>
</div>
</asp:Content>
