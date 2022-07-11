using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace inmobiscosts.Datos
{
    public class EdificioTipoServicioModel
    {
        public int Servicio_edificio_id { get; set; }
        public string Edificio_nombre { get; set; }
        [DisplayName(@"Tipo de servicio")]
        public string Tipo_servicio_nombre { get; set; }
        [DisplayName(@"Proveedor")]
        public string Servicio_nombre_empressa { get; set; }
        [DisplayName(@"Fecha de corte")]
        public string Servicio_edificio_fecha { get; set; }
    }
}