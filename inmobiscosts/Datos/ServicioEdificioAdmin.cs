using System;
using inmobiscosts.Modelo;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace inmobiscosts.Datos
{
    public class ServicioEdificioAdmin:Conexion
    {
        public bool Guardar(ServicioEdificioModel modelo)
        {
            
            try
            {
                Conectar();
                List<ServicioEdificioModel> lista = new List<ServicioEdificioModel>();
                SqlCommand cmd = new SqlCommand("GetServicioEdificioByServicioId", cnn);
                cmd.Parameters.Add(new SqlParameter("@id", modelo.Servicio_id));
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    cmd.Dispose();
                    Desconectar();
                    return false;
                }
                else
                {
                    cmd.Dispose();
                    Desconectar();
                    Conectar();
                    SqlCommand comando = new SqlCommand("GuardarServicioEdificio", cnn);
                    comando.CommandType = System.Data.CommandType.StoredProcedure;
                    comando.Parameters.Add(new SqlParameter("@edificio_id", modelo.Edificio_id));
                    comando.Parameters.Add(new SqlParameter("@servicio_id", modelo.Servicio_id));
                    comando.Parameters.Add(new SqlParameter("@fecha_corte", modelo.Fecha_corte));
                    comando.ExecuteNonQuery();
                    comando.Dispose();
                    return true;
                }
                
            }
            catch (Exception e)
            {

                Console.WriteLine(e.StackTrace);
                return false;   
            }
            finally
            {
                Desconectar();
            }
        }
        public void Eliminar(int id)
        {
            Conectar();
            try
            {


                SqlCommand comando = new SqlCommand("EliminarServicioEdificio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add(new SqlParameter("@id", id));
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

        public void Actualizar(int Id, int Edificio_id,int Servicio_id, int Fecha_corte)
        {
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("EditarServicioEdificio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add(new SqlParameter("@id",Id));
                comando.Parameters.Add(new SqlParameter("@edificio_id",Edificio_id));
                comando.Parameters.Add(new SqlParameter("@servicio_id",Servicio_id));
                comando.Parameters.Add(new SqlParameter("@fecha_corte",Fecha_corte));
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

        public List<ServicioEdificioModel> GetServicioEdificioByEdificioID(int Edificio_id)
        {
            List<ServicioEdificioModel> lista = new List<ServicioEdificioModel>();
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("GetServicioEdificioByEdificioID", cnn);
                comando.Parameters.Add(new SqlParameter("@id", Edificio_id));
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    ServicioEdificioModel modelo = new ServicioEdificioModel()
                    {
                        Id = (int)reader[0],
                        Edificio_id = (int)reader[1],
                        Servicio_id = (int)reader[2]
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
        //GetServiciosEdificio
        public List<EdificioTipoServicioModel> GetServiciosEdificio(int Edificio_id)
        {
            List<EdificioTipoServicioModel> lista = new List<EdificioTipoServicioModel>();
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("GetServiciosEdificio", cnn);
                comando.Parameters.Add(new SqlParameter("@id", Edificio_id));
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    EdificioTipoServicioModel modelo = new EdificioTipoServicioModel()
                    {
                        Servicio_edificio_id = (int)reader[0],
                        Edificio_nombre = reader[1] + "",
                        Tipo_servicio_nombre = reader[2]+"",
                        Servicio_nombre_empressa = reader[3]+"",
                        Servicio_edificio_fecha = reader[4]+""
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
        //GetAllServiciosEdificio
        public List<EdificioTipoServicioModel> GetAllServiciosEdificio()
        {
            List<EdificioTipoServicioModel> lista = new List<EdificioTipoServicioModel>();
            Conectar();
            try
            {
                SqlCommand comando = new SqlCommand("GetAllServiciosEdificio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataReader reader = comando.ExecuteReader();
                while (reader.Read())
                {
                    EdificioTipoServicioModel modelo = new EdificioTipoServicioModel()
                    {
                        Servicio_edificio_id = (int)reader[0],
                        Edificio_nombre = reader[1] + "",
                        Tipo_servicio_nombre = reader[2] + "",
                        Servicio_nombre_empressa = reader[3] + "",
                        Servicio_edificio_fecha = reader[4] + ""
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