<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaServicio.aspx.vb" Inherits="OutsourcingV2.AltaServicio" %>
<!DOCTYPE html>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <head>
         <meta charset="iso-8859-1">
         <meta name="description" content="Alta Proyecto" />
         <title>Alta Proyecto</title>    
     </head>
    
    <body>
       
        <h1>Alta Proyecto</h1>
   
             <div align="left">

            <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar cambios" />
           <asp:Button ID="btnCancelarCambios" runat="server" Text="Cancelar cambios" />
                 <br />
             <h2>Datos Servicio</h2>
                 <br />
             <asp:Label ID="LblTiposervicio" runat="server" Text="Tipo serivicio"></asp:Label>
           <asp:ListBox ID="listbxTipoServicio" runat="server"></asp:ListBox>

             <br />
          <asp:Label ID="lblUsuarioObjetivo" runat="server" Text="objetivo del usuario"></asp:Label>
           <asp:ListBox ID="listbxUsuarioObjetivo" runat="server"></asp:ListBox>

             <br />

            <h2>Datos Proyecto</h2>




            <asp:Label ID="lblProyecto" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBxNombreProyecto" runat="server"></asp:TextBox>
            <br />

           


            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
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
            
   
        


    
            
      
        
        
        </body>
</asp:Content>
    
