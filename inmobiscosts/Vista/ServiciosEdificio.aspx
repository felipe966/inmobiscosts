<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiciosEdificio.aspx.cs" Inherits="inmobiscosts.Vista.ServiciosEdificio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Servicios de un Edificio</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/Vista/ServiciosEdificio">InmobiCost</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/Vista/ServicioEdificio">Asociar Servicio <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Vista/Edificio">Nuevo Edificio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Vista/Servicio">Nueva Empresa de Servicio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Vista/TipoServicio">Nuevo Tipo de Servicio</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>
    <div class="container-fluid">
    <form id="form1" runat="server">
        <div aria-sort="none"  class="row justify-content-center align-items-center">
            <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
             
                    <div class="form-group">
                        <br />
                        <br />
                        &nbsp;
                        <h2>Seleccione el edificio para ver sus servicios:</h2>
                        <br />
                        <br />
&nbsp;<asp:DropDownList ID="dp_edificio" class="btn btn-lg btn-info dropdown-toggle" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="Id" OnSelectedIndexChanged="dp_edificio_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT [Id], [nombre] FROM [edificio]"></asp:SqlDataSource>
                    </div>
                   

            
                <div class="form-group">

                        <br />
                        <br />
                        <asp:GridView ID="gv_servicios" runat="server" class="table table-bordered table-condensed  table-hover " AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="Tipo Servicio">
                                    <ItemTemplate>
                                         <asp:Label ID="lblid" runat="server"   Text= '<%#Eval("Tipo_servicio_nombre")%>'></asp:Label>
                                     </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Proveedor / Empresa">
                                    <ItemTemplate>
                                         <asp:Label ID="lblid" runat="server"   Text= '<%#Eval("Servicio_nombre_empressa")%>'></asp:Label>
                                     </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Fecha de corte">
                                    <ItemTemplate>
                                         <asp:Label ID="lblid" runat="server"   Text= '<%#Eval("Servicio_edificio_fecha")%>'></asp:Label>
                                     </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <br />

                    </div>
            </div>
             
            </div>
        
            </form>
        </div>

</body>
</html>
