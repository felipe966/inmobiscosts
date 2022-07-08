using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace inmobiscosts.Datos
{
    public class Conexion
    {
        protected SqlConnection cnn;
        protected void Conectar()
        {
            try
            {
                cnn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Usuario\\source\\repos\\inmobiscosts\\inmobiscosts\\App_Data\\db.mdf;Integrated Security=True;Connect Timeout=30");
                cnn.Open();
            }
            catch(Exception e)
            {
                Console.WriteLine(e.StackTrace);
            }
        }

        protected void Desconectar()
        {
            try
            {
                cnn.Close();
                cnn.Dispose();  
            }
            catch(Exception e)
            {
                Console.WriteLine(e.StackTrace);
            }
        }
    }
}