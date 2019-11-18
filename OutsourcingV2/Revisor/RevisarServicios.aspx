<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="RevisarServicios.aspx.vb" Inherits="OutsourcingV2.RevisarServicios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class ="container">
		<h1 class="text-info align-text-bottom">Revisión de Proyectos </h1>
		<asp:GridView ID="DatosProyecto" runat="server">
			<Columns>
				 <asp:BoundField DataField="Nombre del proyecto" HeaderText="Nombre del proyecto" SortExpression="Nombre del proyecto" />
				 <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="nombre" />
				 <asp:BoundField DataField="id" HeaderText="id"  SortExpression="id" />
                 <asp:BoundField DataField="Adscripción" HeaderText="Adscripción"  SortExpression="Adscripción" />
                 <asp:BoundField DataField="Estatus" HeaderText="Estatus"  SortExpression="Estatus" />
                 <asp:BoundField DataField="Habilitado" HeaderText="Habilitado"  SortExpression="Habilitado" />
			</Columns>
		</asp:GridView>

	</div>
</asp:Content>
