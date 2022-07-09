using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace inmobiscosts.Modelo
{
    public class EdificioModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }  
        public int Capacidad { get; set; }
        public string Fecha_inicio { get; set; }
        public string Provincia { get; set; }
        public string Canton { get; set; }
        public string Distrito { get; set; }
        public string Adquirido { get; set; }
        public string Fecha_fin { get; set; }

    }
}