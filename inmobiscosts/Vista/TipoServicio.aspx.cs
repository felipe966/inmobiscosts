using System;
using inmobiscosts.Modelo;
using inmobiscosts.Datos;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace inmobiscosts.Vista
{
    public partial class TipoServicio : System.Web.UI.Page
    {
        TipoServicioAdmin admin = new TipoServicioAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_agregar_Click(object sender, EventArgs e)
        {
            
            TipoServicioModel modelo = new TipoServicioModel()
            {
                Nombre = txt_nombre.Text,
                Unidad_medida=txt_unidad_medida.Text

            };
            admin.Guardar(modelo);
            Response.Redirect("TipoServicio.aspx");

        }
    }
}