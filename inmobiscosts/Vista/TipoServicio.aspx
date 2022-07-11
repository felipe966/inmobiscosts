<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TipoServicio.aspx.cs" Inherits="inmobiscosts.Vista.TipoServicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Agregar Tipo de Servicio</title>
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
            
                &nbsp;
             <div class="form-group">
            <asp:TextBox ID="txt_nombre" runat="server" Width="293px" CssClass="form-control form-control-lg" placeholder="Nombre del servicio"></asp:TextBox>
            </div>
                 <br />
                 &nbsp;<div class="form-group">

            <asp:TextBox ID="txt_unidad_medida" runat="server" Width="293px" CssClass="form-control form-control-lg" placeholder="Nombre del servicio"></asp:TextBox>

                  </div>
            <br />
            
                 <br /><div class="form-group">
                <asp:Button ID="bt_agregar" runat="server" Height="42px" OnClick="bt_agregar_Click" CssClass="btn btn-info btn-lg btn-block"  Text="Agregar" Width="197px" />
                 </div><br />
                 <br />
                
                 <br />
                 

            </div>
            </div>
             <div style="width:auto">
                 <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-condensed  table-hover " AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="nombre" HeaderText="Nombre del servicio" SortExpression="nombre" />
                         <asp:BoundField DataField="unidad_medida" HeaderText="Unidad de medida" SortExpression="unidad_medida" />
                         <asp:CommandField ShowEditButton="True" />
                         <asp:CommandField ShowDeleteButton="True" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" DeleteCommand="DELETE FROM [tipo_servicio] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tipo_servicio] ([nombre], [unidad_medida]) VALUES (@nombre, @unidad_medida)" SelectCommand="SELECT * FROM [tipo_servicio]" UpdateCommand="UPDATE [tipo_servicio] SET [nombre] = @nombre, [unidad_medida] = @unidad_medida WHERE [Id] = @Id">
                     <DeleteParameters>
                         <asp:Parameter Name="Id" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="nombre" Type="String" />
                         <asp:Parameter Name="unidad_medida" Type="String" />
                     </InsertParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="nombre" Type="String" />
                         <asp:Parameter Name="unidad_medida" Type="String" />
                         <asp:Parameter Name="Id" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                </div>
        </form>
        </div>
</body>
</html>
