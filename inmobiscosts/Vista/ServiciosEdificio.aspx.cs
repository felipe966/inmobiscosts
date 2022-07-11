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
            try
            {
                gv_servicios.DataSource = null;
                gv_servicios.DataSource = ServicioAdmin.GetAllServiciosEdificio();
                
            }
            catch
            {
                gv_servicios.DataSource = null;
            }
            finally
            {
                gv_servicios.DataBind();
            }
        }

        protected void dp_edificio_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                gv_servicios.DataSource = null;
                gv_servicios.DataSource = ServicioAdmin.GetServiciosEdificio(int.Parse(dp_edificio.SelectedValue));

            }
            catch
            {
                gv_servicios.DataSource = null;
            }
            finally
            {
                gv_servicios.DataBind();
            }
        }

        
    }
}