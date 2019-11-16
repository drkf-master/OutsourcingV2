<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaServicio.aspx.vb" Inherits="OutsourcingV2.AltaServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="tabs">
        <div class="container">
            <h6 class="section-title h1 text-center">Alta Proyecto</h6>
            <div class="row">
                <div class="col-xs-12 ">
                    <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Alta Proyecto</a>
                            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Datos Servicio</a>
                            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Datos proyecto</a>
                            <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">Recursos</a>
                        </div>
                    </nav>
                    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                        <div class="tab-pane " id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                            <div class="table-bordered">
                                <h2>  Datos Servicio</h2>

                                <div class="left">
                                    <br />
                                    <asp:Label ID="LblTiposervicioProyecto" runat="server" Text="Tipo serivicio"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="dpwTipoServicio" runat="server">
                                    </asp:DropDownList>
                                </div>

                                <div class="left">
                                    <br />
                                    <asp:Label ID="lblUsuarioObjetivo" runat="server" Text="Usuario Objetivo"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="dpwUsuarioObjetivo" runat="server">
                                    </asp:DropDownList>

                                    <br />
                                </div>
                            </div>
                        </div>


                        <div class="tab-pane " id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <h2>Datos Proyecto</h2>

                            <div class="left">

                                <asp:Label ID="lblProyecto" runat="server" Text="Nombre"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBxNombreProyecto" runat="server" Width="350px"></asp:TextBox>
                                <br />
                            </div>

                            <div class="left">
                                <asp:Label ID="lblDescripcionProyecto" runat="server" Text="Descripción"></asp:Label>
                                <br />
                                <asp:TextBox runat="server" Height="100px" Width="350"></asp:TextBox>
                                <br />
                            </div>

                            <div class="left">
                                <asp:Label ID="lblObjetivo" runat="server" Text="Objetivo"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtObjetivo" runat="server" Width="350px" Height="80"></asp:TextBox>
                                <br />
                            </div>

                            <div class="left">
                                <asp:Label ID="lblBeneficios" runat="server" Text="Beneficios"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtBeneficios" runat="server" Height="80" Width="350"></asp:TextBox>
                                <br />
                            </div>

                            <div class="left">
                                <asp:Label ID="lblTiempo" runat="server" Text="Tiempo de duración"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtTiempoProyecto" runat="server" Width="350"></asp:TextBox>
                                <br />
                            </div>

                            <div class="left">
                                <asp:Label ID="lblAdscripcion" runat="server" Text="Adscripción"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtAdscripcion" runat="server" Height="50" Width="350"></asp:TextBox>
                                <br />
                            </div>

                        </div>
                        <div class="tab-pane " id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <h2>Recursos</h2>

                            <div class="left">
                                <asp:Label ID="lblRecursosHumanosProyecto" runat="server" Text="Recursos humanos"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtRecursosHumanosProyecto" runat="server" Width="350" Height="50"></asp:TextBox>
                                <br />
                            </div>

                            <div class="left">
                                <asp:Label ID="lblInfraestructuraProyecto" runat="server" Text="Adscripción"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtInfraesctructraProyecto" runat="server" Height="70" Width="350"></asp:TextBox>
                                <br />
                            </div>

                            <br />

                            <div class="left">
                                <asp:Button ID="btnGuardarProyecto" runat="server" Text="Guardar Proyecto" />
                                <br />
                                <br />
                                <asp:Button ID="btnCancelarProyecto" runat="server" Text="Cancelar Proyecto" />
                            </div>

                        </div>
                        <div class="tab-pane " id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>



    <div class="container align-content-center">
        Alta Proyecto
   
       <div class="align-content-center">
           <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar cambios" />
           <asp:Button ID="btnCancelarCambios" runat="server" Text="Cancelar cambios" />
           <br />






       </div>


    </div>
</asp:Content>
