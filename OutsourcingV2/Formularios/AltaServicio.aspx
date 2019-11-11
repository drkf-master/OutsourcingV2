<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaServicio.aspx.vb" Inherits="OutsourcingV2.AltaServicio" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<section id="tabs">
	<div class="container">
		<h6 class="section-title h1">Alta Proyecto</h6>
		<div class="row">
			<div class="col-xs-12 ">
				<nav>
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Home</a>
						<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Profile</a>
						<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact</a>
						<a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">About</a>
					</div>
				</nav>
				<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
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
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
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

					</div>
					<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
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
					<div class="tab-pane fade" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
					
					</div>
				</div>
			
			</div>
		</div>
	</div>
</section>
	
	
	
	<div class ="container align-content-center">    
       
		Alta Proyecto
   
       <div class="align-content-center">
            <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar cambios" />
           <asp:Button ID="btnCancelarCambios" runat="server" Text="Cancelar cambios" />
                 <br />
          

            


       
           </div>
		   
		   
	</div>   
</asp:Content>
    
