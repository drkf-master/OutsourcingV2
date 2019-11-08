<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaServicio.aspx.vb" Inherits="OutsourcingV2.AltaServicio" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="container align-content-center">    
       
		Alta Proyecto
   
       <div class="align-content-center">
            <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar cambios" />
           <asp:Button ID="btnCancelarCambios" runat="server" Text="Cancelar cambios" />
                 <br />
           <h2>Datos Servicio</h2>
                 <br />
             <asp:Label ID="LblTiposervicioProyecto" runat="server" Text="Tipo serivicio"></asp:Label>
           	  <asp:DropDownList ID="DropDownList1" runat="server">
				 </asp:DropDownList>

             <br />
          <asp:Label ID="lblUsuarioObjetivo" runat="server" Text="objetivo del usuario"></asp:Label>
           	  <asp:DropDownList ID="DropDownList2" runat="server">
				 </asp:DropDownList>

             <br />

            <h2>Datos Proyectooyecto</h2>

            <asp:Label ID="lblProyecto" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBxNombreProyecto" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="lblDescripcionProyecto" runat="server" Text="Descripción"></asp:Label>
            <asp:TextBox ID="txtDescripcionProyecto" runat="server"></asp:TextBox>
            <br />
            
            <asp:Label ID="lblObjetivo" runat="server" Text="Objetivo"></asp:Label>
           <asp:TextBox ID="txtObjetivo" runat="server"></asp:TextBox>
           <br />

           <asp:Label ID="lblBeneficios" runat="server" Text="Beneficios"></asp:Label>
           <asp:TextBox ID="txtBeneficios" runat="server"></asp:TextBox>
            <br />

           <asp:Label ID="lblTiempo" runat="server" Text="Tiempo de duración"></asp:Label>
           <asp:TextBox ID="txtTiempoProyecto" runat="server"></asp:TextBox>
             <br />

           <asp:Label ID="lblAdscripcion" runat="server" Text="Adscripción"></asp:Label>
           <asp:TextBox ID="txtAdscripcion" runat="server"></asp:TextBox>
             <br />



        <h2>Recursos</h2>
                 <br />
           <asp:Label ID="lblRecursosHumanosProyecto" runat="server" Text="Recursos humanos"></asp:Label>
           <asp:TextBox ID="txtRecursosHumanosProyecto" runat="server"></asp:TextBox>
             <br />

           <asp:Label ID="lblInfraestructuraProyecto" runat="server" Text="Adscripción"></asp:Label>
           <asp:TextBox ID="txtInfraesctructraProyecto" runat="server"></asp:TextBox>
             <br />

          <asp:Button ID="btnGuardarProyecto" runat="server" Text="Guardar Proyecto" />
            <asp:Button ID="btnCancelarProyecto" runat="server" Text="Cancelar Proyecto" />
           
           </div>
		   
		   
	</div>   
</asp:Content>
    
