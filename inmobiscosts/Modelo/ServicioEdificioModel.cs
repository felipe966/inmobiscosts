using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace inmobiscosts.Modelo
{
    public class ServicioEdificioModel
    {
        public int Id { get; set; }
        public int Servicio_id { get; set; }
        public int Edificio_id { get; set; }
        public int Fecha_corte { get; set; }
    }
}