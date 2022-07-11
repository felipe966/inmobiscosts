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

        protected void gv_servicios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label id = (Label)gv_servicios.Rows[e.RowIndex].FindControl("lb_servicio_edificio_id");
            ServicioAdmin.Eliminar(int.Parse(id.Text));
            Response.Redirect("/Vista/ServiciosEdificio");

        }


        protected void gv_servicios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string idd = ((Label)e.Row.FindControl("lb_servicio_edificio_id")).Text;
                string edificio_nombre = ((Label)e.Row.FindControl("lb_edificio_nombre")).Text;
                string tipo_servicio_nombre = ((Label)e.Row.FindControl("lb_tipo_servicio_nombre")).Text;
                string servicio_nombre_empresa = ((Label)e.Row.FindControl("lb_servicio_nombre_empresa")).Text;

                //e.Row.Attributes["onclick"] = "window.location.href='EditarServicioEdificio.aspx?id=" + idd + "&edificio_nombre="+ edificio_nombre + "&tipo_servicio_nombre="+ tipo_servicio_nombre + "&servicio_nombre_empresa="+ servicio_nombre_empresa;
                //e.Row.ToolTip = "Click to select this row.";
            }
        }

    }

    }