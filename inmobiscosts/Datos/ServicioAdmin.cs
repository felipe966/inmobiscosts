using inmobiscosts.Modelo;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace inmobiscosts.Datos
{
    public class ServicioAdmin:Conexion
    {
        public List<ServicioModel> GetServiciosByTipo(int Tipo_id)
        {
            List<ServicioModel> lista = new List<ServicioModel>();
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("GetServicioByTipoID", cnn);
                comando.Parameters.Add(new SqlParameter("@id", Tipo_id));
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    ServicioModel modelo = new ServicioModel()
                    {
                        Id = (int)reader[0],
                        Nombre_empresa = reader[1] + "",
                        Tipo_id = (int)reader[2]
                    };
                    lista.Add(modelo);
                }
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
            }
            finally
            {
                Desconectar();


            }
            return lista;
        }

        public void Guardar(ServicioModel modelo)
        {
            Conectar();
            try
            {


                SqlCommand comando = new SqlCommand("GuardarServicio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add(new SqlParameter("@nombre_empresa", modelo.Nombre_empresa));
                comando.Parameters.Add(new SqlParameter("@tipo_id", modelo.Tipo_id));
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