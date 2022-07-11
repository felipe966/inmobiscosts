<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServicioEdificio.aspx.cs" Inherits="inmobiscosts.Vista.ServicioEdificio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Agregar Servicios a Edificio</title>
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
                &nbsp;Nombre del edificio
             <div class="form-group">
                 <asp:DropDownList ID="dp_edificio" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="Id">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT [Id], [nombre] FROM [edificio]"></asp:SqlDataSource>
                 <br />
                 </div>
                 Tipo de servicio:<br />
                  <div class="form-group">

                      <asp:DropDownList ID="dp_tipo_servicio" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="Id" OnSelectedIndexChanged="dp_tipo_servicio_SelectedIndexChanged" AutoPostBack="True">
                      </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT [Id], [nombre] FROM [tipo_servicio]"></asp:SqlDataSource>

                  </div>
                 &nbsp;<br />
                  <div class="form-group">

                      Empresa proveedor:<asp:DropDownList ID="dp_empresa" runat="server" DataTextField="nombre_empresa" DataValueField="id">
                      </asp:DropDownList>
                      <br />

                  </div>
                 <br />
                  <div class="form-group">

                      Día de corte:<asp:DropDownList ID="dp_fecha_corte" runat="server">
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                          <asp:ListItem>6</asp:ListItem>
                          <asp:ListItem>7</asp:ListItem>
                          <asp:ListItem>8</asp:ListItem>
                          <asp:ListItem>9</asp:ListItem>
                          <asp:ListItem>10</asp:ListItem>
                          <asp:ListItem>11</asp:ListItem>
                          <asp:ListItem>12</asp:ListItem>
                          <asp:ListItem>13</asp:ListItem>
                          <asp:ListItem>14</asp:ListItem>
                          <asp:ListItem>15</asp:ListItem>
                          <asp:ListItem>16</asp:ListItem>
                          <asp:ListItem>17</asp:ListItem>
                          <asp:ListItem>18</asp:ListItem>
                          <asp:ListItem>19</asp:ListItem>
                          <asp:ListItem>20</asp:ListItem>
                          <asp:ListItem>21</asp:ListItem>
                          <asp:ListItem>22</asp:ListItem>
                          <asp:ListItem>23</asp:ListItem>
                          <asp:ListItem>24</asp:ListItem>
                          <asp:ListItem>25</asp:ListItem>
                          <asp:ListItem>26</asp:ListItem>
                          <asp:ListItem>27</asp:ListItem>
                          <asp:ListItem>28</asp:ListItem>
                          <asp:ListItem>29</asp:ListItem>
                          <asp:ListItem>30</asp:ListItem>
                      </asp:DropDownList>
                      </div>
                      <br />
                 <div class="form-group">
                <asp:Button ID="bt_agregar" runat="server" Height="42px" OnClick="bt_agregar_Click" CssClass="btn btn-info btn-lg btn-block"  Text="Agregar" Width="197px" />
                 </div>
                      

            </div>
            <br />
            
            </div>
            <div style="width:100%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3"  class="table table-bordered table-condensed table-responsive table-hover ">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="servicio_id" HeaderText="ID Servicio" SortExpression="servicio_id" />
                    <asp:BoundField DataField="edificio_id" HeaderText="ID Edificio" SortExpression="edificio_id" />
                    <asp:BoundField DataField="fecha_corte" HeaderText="Fecha Corte" SortExpression="fecha_corte" />
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <EmptyDataTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("servicio_id", "{0:D}") %>'></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("edificio_id", "{0:D}") %>'></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("fecha_corte", "{0:D}") %>'></asp:TextBox>
                    <br />
                </EmptyDataTemplate>
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT * FROM [servicio_edificio]"  UpdateCommand="UPDATE [servicio_edificio] SET [servicio_id] = @servicio_id, [edificio_id] = @edificio_id, [fecha_corte] = @fecha_corte WHERE [Id] = @Id"  DeleteCommand="DELETE FROM [servicio_edificio] WHERE [Id] = @Id">
                    <UpdateParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                        <asp:Parameter Name="servicio_id" Type="Int32" />
                        <asp:Parameter Name="edificio_id" Type="Int32" />
                        <asp:Parameter Name="fecha_corte" Type="Byte" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            </form>
        </div>
            
</body>
</html>