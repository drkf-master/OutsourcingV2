<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="ModificarServicio.aspx.vb" Inherits="OutsourcingV2.ModificarServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h6 class="section-title h1">Modificar proyecto</h6>
     
             <h2>Datos Servicio</h2>
              <div align="left">
                 <br />
             <asp:Label ID="LblTiposervicioProyecto" runat="server" Text="Tipo serivicio"></asp:Label>
                <br />
           	  <asp:DropDownList ID="dpnTipoServicio" runat="server">
				 </asp:DropDownList>
                </div>

        <div align="left">
             <br />
          <asp:Label ID="lblUsuarioObjetivo" runat="server" Text="objetivo del usuario"></asp:Label>
            <br />
           	  <asp:DropDownList ID="dpnObjetivo" runat="server">
				 </asp:DropDownList>

    <h2>Datos Proyecto</h2>

            <div align="left">
            <asp:Label ID="lblNombre" runat="server" Text="Nombre" Width="350"></asp:Label>
                <br />
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br />
                </div>

                 <div align="left">
            <asp:Label ID="lblDescripción" runat="server" Text="Descripción"></asp:Label>
                     <br />
            <asp:TextBox ID="txtDescripcion" runat="server" Height="100" Width="350"></asp:TextBox>
            <br />
             </div>

            <div align="left">
            <asp:Label ID="lblObjetivoProyecto" runat="server" Text="Objetivo"></asp:Label>
                <br />
           <asp:TextBox ID="txtObjetivoProyecto" runat="server" Height="70" Width="350"></asp:TextBox>
           <br />
            </div>

             <div align="left">
           <asp:Label ID="lblBeneficiosProyecto" runat="server" Text="Beneficios"></asp:Label>
                 <br />
           <asp:TextBox ID="txtBeneficiosProyecto" runat="server" Height="70" Width="350"></asp:TextBox>
            <br />
            </div>

            <div align="left">
           <asp:Label ID="lblTiempo" runat="server" Text="Tiempo de duración"></asp:Label>
                <br />
           <asp:TextBox ID="txtTiempo" runat="server" Width="350"></asp:TextBox>
             <br />
            </div>     
                

                <div align="left"> 
            <asp:Label ID="Label6" runat="server" Text="Adscripción"></asp:Label>
                    <br />
           <asp:TextBox ID="txtAdscripcion" runat="server" Width="350" Height="50"></asp:TextBox>
             <br />
            </div>

			
					 <h2>Recursos</h2>
              
               <div align="left">    
           <asp:Label ID="lblRecursosHumanosProyecto" runat="server" Text="Recursos humanos"></asp:Label>
                   <br />
           <asp:TextBox ID="txtRecursosHumanosProyecto" runat="server" Width="350" Height="50"></asp:TextBox>
             <br />
            </div>

              <div align="left"> 
           <asp:Label ID="lblInfraestructuraProyecto" runat="server" Text="Adscripción"></asp:Label>
                  <br />
           <asp:TextBox ID="txtInfraesctructraProyecto" runat="server" Width="350" Height="70"></asp:TextBox>
             <br />
            </div>

          <div align="left"> 
          <asp:Button ID="btnModificarProyecto" runat="server" Text="Modificar Proyecto" />
              <br />
            <asp:Button ID="btnEliminarProyecto" runat="server" Text="Eliminar Proyecto"  />
                </div>

</asp:Content>







