<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaUsuario.aspx.vb" Inherits="OutsourcingV2.AltaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 align="center"> Alta de usuario </h2>
    <br />
    Buscar persona
    <br /><br />
    <label> RFC </label>
    <asp:TextBox ID="txtRFC" runat="server"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" Text="Buscar" />
    <br /><br />
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
    Añadir usuario
    <br /><br />
    <label>Usuario</label>
    <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox><br /><br />
    <label>contraseña</label>
    <asp:TextBox ID="txtcontraseña" runat="server"></asp:TextBox><br /><br />
    <label>Confirmación</label>
    <asp:TextBox ID="txtcofirmacion" runat="server"></asp:TextBox><br /><br />
    <label>Tipo de usuario</label>
    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br /><br />
    <label>Adscripción</label>
    <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><br /><br />
    <asp:Button ID="btndaralta" runat="server" Text="Dar alta" /><br /><br />
    <asp:Button ID="btncancelarusuario" runat="server" Text="cancelar" />
</asp:Content>
