<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edificio.aspx.cs" Inherits="inmobiscosts.Vista.Edificio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nombre:&nbsp;
            <asp:TextBox ID="txt_nombre" runat="server" Width="250px"></asp:TextBox>
            <br />
            <br />
            Capacidad:&nbsp;
            <asp:TextBox ID="txt_capacidad" runat="server"></asp:TextBox>
            <br />
            <br />
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
            <br />
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
            <br />
            <br />
            Canton:
            <asp:TextBox ID="txt_canton" runat="server"></asp:TextBox>
            <br />
            <br />
            Distrito:
            <asp:TextBox ID="txt_distrito" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;<asp:RadioButtonList ID="rd_adquirido" runat="server">
                <asp:ListItem Value="1">Adquirido</asp:ListItem>
                <asp:ListItem Value="0">Alquilado</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
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
            </asp:Calendar>
            <br />
            <br />
            <asp:Button ID="bt_agregar" runat="server" Height="42px" OnClick="bt_agregar_Click" Text="Agregar" Width="197px" />
            <br />
            <br />
        </div>
        <div>
            <asp:GridView ID="grid_edificios" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
