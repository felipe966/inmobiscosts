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
    public partial class ServicioEdificio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        ServicioEdificioAdmin admin = new ServicioEdificioAdmin();
        ServicioAdmin ServicioAdmin = new ServicioAdmin();  
       

        protected void bt_agregar_Click(object sender, EventArgs e)
        {
            ServicioEdificioModel modelo = new ServicioEdificioModel()
            {
                Servicio_id = int.Parse(dp_empresa.SelectedValue),
                Edificio_id = int.Parse(dp_edificio.SelectedValue),
                Fecha_corte = int.Parse(dp_fecha_corte.SelectedValue),
            };
            if (admin.Guardar(modelo))
            {
                Response.Redirect("ServicioEdificio.aspx");
            }
            else
            {
                Response.Write("<script>alert('El edificio seleccionado ya posee el servicio especificado. Por favor revise los datos')</script>");
                //Response.Redirect("ServicioEdificio.aspx");
            }
            
            

        }

        protected void dp_tipo_servicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                
                dp_empresa.DataSource = ServicioAdmin.GetServiciosByTipo(int.Parse(dp_tipo_servicio.SelectedValue));
            }
            catch (Exception)
            {

                dp_empresa.DataSource = null;
            }
            finally
            {
                dp_empresa.DataBind();
            }
        }
    }
}