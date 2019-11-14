<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="RevisarServicios.aspx.vb" Inherits="OutsourcingV2.RevisarServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class ="container">
		<h1 class="text-info align-text-bottom">Revisión de Proyectos </h1>
		<asp:GridView ID="DatosProyecto" runat="server">
			<Columns>
				 <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
				 <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
				 <asp:BoundField DataField="apellido" HeaderText="apellido"  SortExpression="apellido" />
			</Columns>
		</asp:GridView>

	</div>
</asp:Content>
