<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="inmobiscosts.Vista.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Inicio</title>
    
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/Vista/Index">InmobiCost</a>
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
        <a class="nav-link" href="/Vista/Servicio">Nuevo Servicio</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/Vista/ServiciosEdificio">Servicios de un Edificio</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
    </form>
  </div>
</nav>
    <div class="container-fluid">
        <div aria-sort="none"  class="row justify-content-center align-items-center">
            <div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
                <form id="form1" runat="server">
                    <div class="form-group">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="883px" Height="275px">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="capacidad" HeaderText="capacidad" SortExpression="capacidad" />
                                <asp:BoundField DataField="provincia" HeaderText="provincia" SortExpression="provincia" />
                                <asp:BoundField DataField="canton" HeaderText="canton" SortExpression="canton" />
                                <asp:BoundField DataField="distrito" HeaderText="distrito" SortExpression="distrito" />
                                <asp:BoundField DataField="adquirido" HeaderText="adquirido" SortExpression="adquirido" />
                                <asp:BoundField DataField="fecha_inicio" HeaderText="fecha_inicio" SortExpression="fecha_inicio" />
                                <asp:BoundField DataField="fecha_fin" HeaderText="fecha_fin" SortExpression="fecha_fin" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT * FROM [edificio]"></asp:SqlDataSource>

                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
