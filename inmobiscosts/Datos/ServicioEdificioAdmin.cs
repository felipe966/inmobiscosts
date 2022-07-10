﻿using System;
using inmobiscosts.Modelo;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace inmobiscosts.Datos
{
    public class ServicioEdificioAdmin:Conexion
    {
        public void Guardar(ServicioEdificioModel modelo)
        {
            Conectar();
            try
            {


                SqlCommand comando = new SqlCommand("GuardarServicioEdificio", cnn);
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.Parameters.Add(new SqlParameter("@edificio_id", modelo.Edificio_id));
                comando.Parameters.Add(new SqlParameter("@servicio_id", modelo.Servicio_id));
                comando.Parameters.Add(new SqlParameter("@fecha_corte", modelo.Fecha_corte));
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
                        Tipo_servicio_nombre = reader[0]+"",
                        Servicio_nombre_empressa = reader[1]+"",
                        Servicio_edificio_fecha = reader[2]+""
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