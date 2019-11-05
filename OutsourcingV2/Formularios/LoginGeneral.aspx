<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="LoginGeneral.aspx.vb" Inherits="OutsourcingV2.LoginGeneral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 align="center"> inicio de sesión</h3>
    <form align="center">
        <label for=" usuario"> usuario: </label>
        <br />
        <input type=" text" placeholder=" name" user="usuario">
         <br /><br />
         <label for=" contraseña"> contraseña: </label>
         <br />
         <input type=" password" placeholder=" password" pass="contraseña">
        <br /><br />
        <input type=" button" value="inicio de sesión">
    </form>
</asp:Content>
