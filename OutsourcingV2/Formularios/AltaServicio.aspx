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
     
        
        <section>
            
       
        <h2>Datos del servicio</h2>
        
   
            <form action="." oninput="range_control_value.value = range_control.valueAsNumber">
            <p>
            Nombre: <input type="text" name="nombre" />
            <br />
            Descripción: <input type="text" name="descripcion" />                            
            <br />
            Objetivo: <input type="text" name="objetivo" />
            Beneficios al usuario: <input type="text" name="beneficios"/>
            Producto final esperado: <input type="text" name="final"/>
            Tiempo de duración: <input type="text" name="tiempo"/>
            Adscripción: <input type="text" name="adscripción"/>                                      
            </p>                       
            </form>
            
        <header>
        <h2>Recursos</h2>
        </header>
            
        </section>
        
        
        </body>
</asp:Content>
    
