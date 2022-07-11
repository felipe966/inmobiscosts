<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edificio.aspx.cs" Inherits="inmobiscosts.Vista.Edificio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <title>Agregar Edificio</title>
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
            <asp:TextBox ID="txt_nombre" runat="server" Width="293px" CssClass="form-control form-control-lg" placeholder="Nombre del edificio"></asp:TextBox>
            </div>
                 <br />
                 &nbsp;<asp:TextBox ID="txt_capacidad" runat="server" CssClass="form-control form-control-lg" placeholder="Capacidad" Width="293px"></asp:TextBox>
            <br />
            <br /> 
                 <div class="form-group">
            Fecha de adquisición/alquiler:<br />
&nbsp;<asp:Calendar ID="cal_inicio" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            </div>
            <br />
             <div class="form-group">
            Provincia:&nbsp;&nbsp;
            <asp:DropDownList ID="dp_provincia" runat="server" Height="47px" Width="121px">
                <asp:ListItem>San Jose</asp:ListItem>
                <asp:ListItem>Alajuela</asp:ListItem>
                <asp:ListItem>Cartago</asp:ListItem>
                <asp:ListItem>Heredia</asp:ListItem>
                <asp:ListItem>Guanacaste</asp:ListItem>
                <asp:ListItem>Puntarenas</asp:ListItem>
                <asp:ListItem Value="Limon">Limón</asp:ListItem>
            </asp:DropDownList>
            </div>
            <br />
            <br />
             <div class="form-group">
            <asp:TextBox ID="txt_canton" runat="server" CssClass="form-control form-control-lg" placeholder="Canton"></asp:TextBox>
            </div>
                 <br />
            <br />
             <div class="form-group">
            <asp:TextBox ID="txt_distrito" runat="server" CssClass="form-control form-control-lg" placeholder="Distrito"></asp:TextBox>
            </div>
                 <br />
            <br /> <div class="form-group">
&nbsp;<asp:RadioButtonList ID="rd_adquirido" runat="server" OnSelectedIndexChanged="rd_adquirido_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="Adquirido">Adquirido</asp:ListItem>
                <asp:ListItem Value="Alquilado">Alquilado</asp:ListItem>
            </asp:RadioButtonList>
                </div>
                <asp:Panel ID="pn_cal_fin" Visible="false" runat="server">
                <br />
                <br /> <div class="form-group">
            Fecha final del contrato:
               <br />
            <asp:Calendar ID="cal_fin" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar></div>
            </asp:Panel>
                 <br />
                 <br />
                 <br /><div class="form-group">
                <asp:Button ID="bt_agregar" runat="server" Height="42px" OnClick="bt_agregar_Click" CssClass="btn btn-info btn-lg btn-block"  Text="Agregar" Width="197px" />
                 </div><br />
                 <br />
                 <hr />
                 <br />
                 
                 <br />
                 

            </div>
            </div>
            <div style="width:100%">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" class="table table-bordered table-condensed  table-hover ">
                         <Columns>
                             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                             <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                             <asp:BoundField DataField="capacidad" HeaderText="Capacidad" SortExpression="capacidad" />
                             <asp:BoundField DataField="fecha_inicio" HeaderText="Fecha Inicio" SortExpression="fecha_inicio" />
                             <asp:BoundField DataField="provincia" HeaderText="Provincia" SortExpression="provincia" />
                             <asp:BoundField DataField="canton" HeaderText="Canton" SortExpression="canton" />
                             <asp:BoundField DataField="distrito" HeaderText="Distrito" SortExpression="distrito" />
                             <asp:BoundField DataField="adquirido" HeaderText="Adquirido" SortExpression="adquirido" />
                             <asp:BoundField DataField="fecha_fin" HeaderText="Fecha Fin" SortExpression="fecha_fin" />
                             <asp:CommandField AccessibleHeaderText="Edit Data" HeaderText="Editar" ShowEditButton="True" />
                             <asp:CommandField ShowDeleteButton="True" />
                         </Columns>
                         <EmptyDataTemplate>
                             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("nombre", "{0}") %>'></asp:TextBox>
                             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("capacidad", "{0:D}") %>'></asp:TextBox>
                             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("fecha_inicio", "{0:d}") %>'></asp:TextBox>
                             <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("provincia", "{0}") %>'>
                                 <asp:ListItem>San Jose</asp:ListItem>
                                 <asp:ListItem>Alajuela</asp:ListItem>
                                 <asp:ListItem>Cartago</asp:ListItem>
                                 <asp:ListItem>Heredia</asp:ListItem>
                                 <asp:ListItem>Guanacaste</asp:ListItem>
                                 <asp:ListItem>Puntarenas</asp:ListItem>
                                 <asp:ListItem>Limón</asp:ListItem>
                             </asp:DropDownList>
                             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("canton", "{0}") %>'></asp:TextBox>
                             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("distrito", "{0}") %>'></asp:TextBox>
                             <br />
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Eval("adquirido", "{0}") %>'>
                                 <asp:ListItem Value="1">Adquirido</asp:ListItem>
                                 <asp:ListItem Value="0">Alquilado</asp:ListItem>
                             </asp:RadioButtonList>
                             <br />
                             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("fecha_fin", "{0:d}") %>'></asp:TextBox>
                         </EmptyDataTemplate>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:inmobiDB %>" SelectCommand="SELECT * FROM [edificio]" DeleteCommand="DELETE FROM [edificio] WHERE [Id] = @Id" InsertCommand="INSERT INTO [edificio] ([nombre], [capacidad], [fecha_inicio], [provincia], [canton], [distrito], [adquirido], [fecha_fin]) VALUES (@nombre, @capacidad, @fecha_inicio, @provincia, @canton, @distrito, @adquirido, @fecha_fin)" UpdateCommand="UPDATE [edificio] SET [nombre] = @nombre, [capacidad] = @capacidad, [fecha_inicio] = @fecha_inicio, [provincia] = @provincia, [canton] = @canton, [distrito] = @distrito, [adquirido] = @adquirido, [fecha_fin] = @fecha_fin WHERE [Id] = @Id">
                         <DeleteParameters>
                             <asp:Parameter Name="Id" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="nombre" Type="String" />
                             <asp:Parameter Name="capacidad" Type="Int32" />
                             <asp:Parameter DbType="Date" Name="fecha_inicio" />
                             <asp:Parameter Name="provincia" Type="String" />
                             <asp:Parameter Name="canton" Type="String" />
                             <asp:Parameter Name="distrito" Type="String" />
                             <asp:Parameter Name="adquirido" Type="String" />
                             <asp:Parameter DbType="Date" Name="fecha_fin" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="nombre" Type="String" />
                             <asp:Parameter Name="capacidad" Type="Int32" />
                             <asp:Parameter DbType="Date" Name="fecha_inicio" />
                             <asp:Parameter Name="provincia" Type="String" />
                             <asp:Parameter Name="canton" Type="String" />
                             <asp:Parameter Name="distrito" Type="String" />
                             <asp:Parameter Name="adquirido" Type="String" />
                             <asp:Parameter DbType="Date" Name="fecha_fin" />
                             <asp:Parameter Name="Id" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                 </div>
            </form>
        </div>
            
</body>
</html>
