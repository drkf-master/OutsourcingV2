<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="EditarUsuario.aspx.vb" Inherits="OutsourcingV2.EditarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="tabs">
        <div class="container">
            <h6 class="section-title h1 text-center ">Editar usuario</h6>
            <br />
            <div class="row">
                <div class="col-xs-12 ">
                    <nav>
                        <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-item nav-link active" id="nav-Buscar-tab" data-toggle="tab" href="#navBuscar" role="tab" aria-controls="nav-home" aria-selected="true">Buscar</a>
                            <a class="nav-item nav-link" id="nav-ModificarUsuario-tab" data-toggle="tab" href="#navModificarUsuario" role="tab" aria-controls="nav-contact" aria-selected="false">Modificar Usuario</a>
                        </div>
                    </nav>
                    <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                        <div class="tab-pane fade" id="navBuscar" role="tabpanel" aria-labelledby="nav-home-tab">
                            <asp:Label ID="Label3" runat="server" Text="Buscar persona"></asp:Label>
							<br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="RFC:"></asp:Label>
                            <asp:TextBox ID="txtRFC" runat="server"></asp:TextBox>
                            <asp:Button ID="btnRFC" runat="server" Text="Buscar" />
                            <br />
                            <br />
                            <br />
                            <div class="tab-pane fade" id="navUsuarios" role="tabpanel" aria-labelledby="nav-about-tab">
                                <div class="label text-info">Usuarios del Sistema</div>
                                <asp:GridView ID="grdUsuariosSistema" runat="server" Class="table-responsive table-striped table-bordered-primary table-hover " BorderStyle="Outset" scrollbar="true"></asp:GridView>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="navModificarUsuario" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <asp:Label ID="Label7" runat="server" Text="Modificar usuario"></asp:Label>
						<br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label><br />
                            <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label><br />
                            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:Label ID="Label" runat="server" Text="Confirmación:"></asp:Label><br />
                            <asp:TextBox ID="txtconfirmacion" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Tipo de usuario:"></asp:Label>
                            <asp:DropDownList ID="ddltipodeusuario" runat="server"></asp:DropDownList><br />
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="Adscripción:"></asp:Label>
                            <asp:DropDownList ID="ddladscripcion" runat="server"></asp:DropDownList><br />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Modificar" Width="150px" /><br />
                            <br />
                            <asp:Button ID="Button3" runat="server" Text="cancelar" Width="150px" />
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
