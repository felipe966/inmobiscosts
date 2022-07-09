using inmobiscosts.Datos;
using inmobiscosts.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inmobiscosts.Vista
{
    public partial class Edificio : System.Web.UI.Page
    {


        EdificioAdmin admin = new EdificioAdmin();
        private void Consultar()
        {
            //grid_edificios.DataSource = admin.ConsultarEdificios();
           // grid_edificios.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



        protected void bt_agregar_Click(object sender, EventArgs e)
        {
            EdificioModel modelo = new EdificioModel()
            {
                Nombre = txt_nombre.Text,
                Capacidad = int.Parse(txt_capacidad.Text),
                Fecha_inicio = cal_inicio.SelectedDate.ToString(),
                Provincia = dp_provincia.Text,
                Canton = txt_canton.Text,
                Distrito = txt_distrito.Text,
                Adquirido = rd_adquirido.SelectedValue,
                Fecha_fin = cal_fin.SelectedDate.ToString()
            };
            admin.Guardar(modelo);

        }
    }
}