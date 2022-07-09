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
    public partial class ServiciosEdificio : System.Web.UI.Page
    {
        
        ServicioEdificioAdmin ServicioAdmin = new ServicioEdificioAdmin();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dp_edificio_SelectedIndexChanged(object sender, EventArgs e)
        {
            gv_servicios.DataSource = null;
            gv_servicios.DataSource = ServicioAdmin.GetServiciosEdificio(int.Parse(dp_edificio.SelectedValue));
            gv_servicios.DataBind();
        }

        
    }
}