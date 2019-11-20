<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AltaServicio.aspx.vb" Inherits="OutsourcingV2.AltaServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="tabs">
        <div class="container">
            <h2 class="section-title h1 text-center text-info">Alta Proyecto</h2>
            <div class="row">
                <div class="col-xs-12 ">
                    <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link " id="nav-tab-Datos" data-toggle="tab" href="#nav-Datos" role="tab" aria-controls="nav-home" aria-selected="true">Datos del Servicio</a>
                            <a class="nav-item nav-link" id="nav-tab-Descripcion" data-toggle="tab" href="#nav-Descripcion" role="tab" aria-controls="nav-profile" aria-selected="false">Descripcion del Servicio</a>
                            <a class="nav-item nav-link" id="nav-tab-Recursos" data-toggle="tab" href="#nav-Recursos" role="tab" aria-controls="nav-contact" aria-selected="false">Recursos necesarios</a>
                            <a class="nav-item nav-link" id="nav-tab-Contacto" data-toggle="tab" href="#nav-Contacto" role="tab" aria-controls="nav-contact" aria-selected="false">Datos de Contacto</a>
                        </div>
                    </nav>
                    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                        <div class="tab-pane " id="nav-Datos" role="tabpanel" aria-labelledby="nav-home-tab">
                            <div class="table-bordered">
                                <h2>Datos Servicio</h2>
                                <asp:Label ID="lblDatosServicioMensaje" runat="server" Text=""></asp:Label>
                                <div class="left">
                                    <br />
                                    <asp:Label ID="LblTiposervicioProyecto" runat="server" Text="Tipo serivicio"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="dpwTipoServicio" runat="server" onchange="Alertando();">
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
                                <br />
                            </div>
                        </div>
                        <div class="tab-pane " id="nav-Descripcion" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <div class="table-bordered">
                                <h2>Datos Proyecto</h2>
                                <div class="left">
                                    <asp:Label ID="lblNombreProyecto" runat="server" Text="Nombre:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtNombreProyecto" runat="server" Width="350px"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="left">
                                    <asp:Label ID="lblDescripcionProyecto" runat="server" Text="Descripción:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtDescripcionProyecto" runat="server" Height="100px" Width="350"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="left">
                                    <asp:Label ID="lblObjetivoProyecto" runat="server" Text="Objetivo:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtObjetivoProyecto" runat="server" Width="350px" Height="80"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="left">
                                    <asp:Label ID="lblBeneficiosProyecto" runat="server" Text="Beneficios:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtBeneficiosProyecto" runat="server" Height="80" Width="350"></asp:TextBox>
                                    <br />
                                </div>

                                <div class="left">
                                    <asp:Label ID="lblAdscripcion" runat="server" Text="Adscripción:"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="drpAdscripcion" runat="server"></asp:DropDownList>
                                    <br />
                                </div>
                                <br />
                                <br />
                            </div>
                        </div>
                        <div class="tab-pane " id="nav-Recursos" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <div class="table-bordered">
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
                                    <asp:Label ID="lblTiempoProyecto" runat="server" Text="Tiempo de duración:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtTiempoProyecto" runat="server" Width="350"></asp:TextBox>
                                    <br />
                                </div>


                                <br />
                                <br />
                            </div>
                        </div>
                        <div class="tab-pane " id="nav-Contacto" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <div class="table-bordered">
                                <h2>Datos de Contacto</h2>
                                <div class="left">
                                    <asp:Label ID="lblLiderProyecto" runat="server" Text="Lider de Proyecto:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtLiderProyecto" runat="server" Width="350" Height="50"></asp:TextBox>
                                    <br />
                                </div>

                                <div class="left">
                                    <asp:Label ID="lblCorreoElectronico" runat="server" Text="Correo Electronico:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtCorreoElectronico" runat="server" Height="70" Width="350"></asp:TextBox>
                                    <br />
                                </div>

                                <br />

                                <div class="left">
                                    <asp:Label ID="lblTelefono" runat="server" Text="Telefono:"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtTelefono" runat="server" Width="350"></asp:TextBox>
                                    <br />
                                </div>
                                <div class="left">
                                    <br />
                                    <asp:Button ID="btnGuardarProyecto" runat="server" Text="Guardar Proyecto" />
                                    <asp:Button ID="btnCancelarProyecto" runat="server" Text="Cancelar Proyecto" />
                                </div>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <div class="container align-content-center">
        <div class="align-content-center">
            <br />
        </div>
    </div>
</asp:Content>
