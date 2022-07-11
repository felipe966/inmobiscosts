<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servicio.aspx.cs" Inherits="inmobiscosts.Vista.Servicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Agregar Servicio</title>
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
            <asp:TextBox ID="txt_nombre_empresa" runat="server" Width="293px" CssClass="form-control form-control-lg" placeholder="Nombre de la empresa"></asp:TextBox>
            </div>
                 <br />
                 &nbsp;<asp:DropDownList ID="dp_tipo_id" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="Id">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT [Id], [nombre] FROM [tipo_servicio]"></asp:SqlDataSource>
            <br />
            
                 <br /><div class="form-group">
                <asp:Button ID="bt_agregar" runat="server" Height="42px" OnClick="bt_agregar_Click" CssClass="btn btn-info btn-lg btn-block"  Text="Agregar" Width="197px" />
                 </div><br />
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1"  class="table table-bordered table-condensed  table-hover " >
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="ID Servicio" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="nombre_empresa" HeaderText="Nombre de la Empresa" SortExpression="nombre_empresa" />
                         <asp:BoundField DataField="tipo_id" HeaderText="ID Tipo de Servicio" SortExpression="tipo_id" />
                         <asp:CommandField ShowEditButton="True" />
                         <asp:CommandField ShowDeleteButton="True" />
                     </Columns>
                     <EmptyDataTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("nombre_empresa", "{0}") %>'></asp:TextBox>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("tipo_id", "{0:D}") %>'></asp:TextBox>
                     </EmptyDataTemplate>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" DeleteCommand="DELETE FROM [servicio] WHERE [Id] = @Id" InsertCommand="INSERT INTO [servicio] ([nombre_empresa], [tipo_id]) VALUES (@nombre_empresa, @tipo_id)" SelectCommand="SELECT [nombre_empresa], [tipo_id], [Id] FROM [servicio]" UpdateCommand="UPDATE [servicio] SET [nombre_empresa] = @nombre_empresa, [tipo_id] = @tipo_id WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="nombre_empresa" Type="String" />
                        <asp:Parameter Name="tipo_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre_empresa" Type="String" />
                        <asp:Parameter Name="tipo_id" Type="Int32" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                 <br />
                 <br />
                 

            </div>
            </div>
            </form>
        </div>
</body>
</html>
