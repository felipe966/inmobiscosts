using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using inmobiscosts.Modelo;

namespace inmobiscosts.Datos
{
    public class EdificioAdmin:Conexion
    {
        public void Guardar(EdificioModel modelo)
        {
            Conectar();
            try
            {
                DateTime iDate = Convert.ToDateTime(modelo.Fecha_inicio);
                DateTime fDate = Convert.ToDateTime(modelo.Fecha_fin);

                SqlCommand comando = new SqlCommand("GuardarEdificio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add(new SqlParameter("@nombre", modelo.Nombre));
                comando.Parameters.Add(new SqlParameter("@capacidad", modelo.Capacidad));
                comando.Parameters.Add(new SqlParameter("@fecha_inicio", iDate));
                comando.Parameters.Add(new SqlParameter("@provincia", modelo.Provincia));
                comando.Parameters.Add(new SqlParameter("@canton", modelo.Canton));
                comando.Parameters.Add(new SqlParameter("@distrito", modelo.Distrito));
                comando.Parameters.Add(new SqlParameter("@adquirido", modelo.Adquirido));
                comando.Parameters.Add(new SqlParameter("@fecha_fin ", fDate));
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

        public List<EdificioModel> ConsultarEdificios()
        {
            List<EdificioModel> lista = new List<EdificioModel>();
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("ConsultarEdificios", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(reader.ToString());
                    EdificioModel modelo = new EdificioModel()
                    {
                        Id = (int)reader[0],
                        Nombre = reader[1]+"",
                        Capacidad = (int)reader[2],
                        Fecha_inicio = reader[3]+"",
                        Provincia=reader[4]+"",
                        Canton=reader[5]+"",
                        Distrito=reader[6]+"",
                        Adquirido = reader[7]+"",
                        Fecha_fin=reader[8]+""
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
    }
}