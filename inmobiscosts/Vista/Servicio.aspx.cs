using System;
using inmobiscosts.Datos;
using inmobiscosts.Modelo;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inmobiscosts.Vista
{
    public partial class Servicio : System.Web.UI.Page
    {
        ServicioAdmin admin = new ServicioAdmin();  
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_agregar_Click(object sender, EventArgs e)
        {
            ServicioModel modelo = new ServicioModel()
            {
                Nombre_empresa = txt_nombre_empresa.Text,
                Tipo_id = int.Parse(dp_tipo_id.SelectedValue)
            };
            admin.Guardar(modelo);
            Response.Redirect("Servicio.aspx");
        }
    }
}