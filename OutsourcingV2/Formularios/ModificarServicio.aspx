<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="ModificarServicio.aspx.vb" Inherits="OutsourcingV2.ModificarServicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="tabs">
        <div class="container">
            <h6 class="section-title h1 text-center">Modificar Proyecto</h6>
            <div class="row">
                <div class="col-xs-12 ">
                    <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Modificar Proyecto</a>
                            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Datos Servicio</a>
                            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Datos proyecto</a>
                            <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">Recursos</a>
                        </div>
                    </nav>
                    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                        <div class="tab-pane " id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                            <div class="table-bordered">

                                <h2>Datos Servicio</h2>
                                <div class="left">
                                    <br />
                                    <asp:Label ID="LblTiposervicioProyecto" runat="server" Text="Tipo serivicio"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="dpnTipoServicio" runat="server">
                                    </asp:DropDownList>
                                </div>
                           </div>

                            <div class="left">
                                <br />
                                <asp:Label ID="lblUsuarioObjetivo" runat="server" Text="Usuario Objetivo"></asp:Label>
                                <br />
                                <asp:DropDownList ID="dpnObjetivo" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="tab-pane " id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                        <h2>Datos Proyecto</h2>

                        <div class="left">
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre" Width="350"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            <br />
                        </div>

                        <div class="left">
                            <asp:Label ID="lblDescripción" runat="server" Text="Descripción"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtDescripcion" runat="server" Height="100" Width="350"></asp:TextBox>
                            <br />
                        </div>

                        <div class="left">
                            <asp:Label ID="lblObjetivoProyecto" runat="server" Text="Objetivo"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtObjetivoProyecto" runat="server" Height="70" Width="350"></asp:TextBox>
                            <br />
                        </div>

                        <div class="left">
                            <asp:Label ID="lblBeneficiosProyecto" runat="server" Text="Beneficios"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtBeneficiosProyecto" runat="server" Height="70" Width="350"></asp:TextBox>
                            <br />
                        </div>

                        <div class="left">
                            <asp:Label ID="lblTiempo" runat="server" Text="Tiempo de duración"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtTiempo" runat="server" Width="350"></asp:TextBox>
                            <br />
                        </div>


                        <div class="left">
                            <asp:Label ID="Label6" runat="server" Text="Adscripción"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtAdscripcion" runat="server" Width="350" Height="50"></asp:TextBox>
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
                            <asp:TextBox ID="txtInfraesctructraProyecto" runat="server" Width="350" Height="70"></asp:TextBox>
                            <br />
                        </div>

                        <div class="left">
                            <asp:Button ID="btnModificarProyecto" runat="server" Text="Modificar Proyecto" />

                            <asp:Button ID="btnEliminarProyecto" runat="server" Text="Eliminar Proyecto" />
                            </div>

                            </div>

                        <div class="tab-pane " id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                        </div>

                        </div>

                    </div>

                </div>
            </div>
        
    </section>



</asp:Content>







