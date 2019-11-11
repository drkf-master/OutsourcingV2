<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="ModificarServicio.aspx.vb" Inherits="OutsourcingV2.ModificarServicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h6 class="section-title h1">Modificar proyecto</h6>
     
             <h2>Datos Servicio</h2>
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

    <h2>Datos Proyecto</h2>

            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            
            <asp:Label ID="Label3" runat="server" Text="Objetivo"></asp:Label>
           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
           <br />

           <asp:Label ID="Label4" runat="server" Text="Beneficios"></asp:Label>
           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />

           <asp:Label ID="Label5" runat="server" Text="Tiempo de duración"></asp:Label>
           <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             <br />

           <asp:Label ID="Label6" runat="server" Text="Adscripción"></asp:Label>
           <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             <br />

			
					 <h2>Recursos</h2>
                 <br />
           <asp:Label ID="lblRecursosHumanosProyecto" runat="server" Text="Recursos humanos"></asp:Label>
           <asp:TextBox ID="txtRecursosHumanosProyecto" runat="server"></asp:TextBox>
             <br />

           <asp:Label ID="lblInfraestructuraProyecto" runat="server" Text="Adscripción"></asp:Label>
           <asp:TextBox ID="txtInfraesctructraProyecto" runat="server"></asp:TextBox>
             <br />

          <asp:Button ID="btnModificarProyecto" runat="server" Text="Modificar Proyecto" />
            <asp:Button ID="btnEliminarProyecto" runat="server" Text="Eliminar Proyecto" />


</asp:Content>






