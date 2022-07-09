using inmobiscosts.Modelo;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace inmobiscosts.Datos
{
    public class TipoServicioAdmin:Conexion
    {
        public void Guardar(TipoServicioModel modelo)
        {
            Conectar();
            try
            {
               

                SqlCommand comando = new SqlCommand("GuardarTipoServicio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add(new SqlParameter("@nombre", modelo.Nombre));
                comando.Parameters.Add(new SqlParameter("@unidad_medida", modelo.Unidad_medida));
                comando.ExecuteNonQuery();
                comando.Dispose();
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
            }
            finally
            {
                Desconectar();
            }
        }
    }
}