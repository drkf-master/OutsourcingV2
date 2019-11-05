<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="LoginGeneral.aspx.vb" Inherits="OutsourcingV2.LoginGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 align="center"> inicio de sesión</h3>
    <div align="center">
        <label for=" usuario"> usuario: </label>
        <br />
        &nbsp;<asp:TextBox ID="txtNombreUsuario" runat="server"></asp:TextBox>
         <br /><br />
         <label for=" contraseña"> contraseña: </label>
         <br />
         <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
&nbsp;<br /><br />
        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="150px" />
&nbsp;</div>
</asp:Content>
