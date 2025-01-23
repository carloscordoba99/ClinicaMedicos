using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class AccesoDatos
    {
        string ruta = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=BDClinicaGrupo19;Integrated Security=True";

        public SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(ruta);
            cn.Open();
            return cn;
        }

        public SqlDataAdapter ObtenerAdaptador(string consulta, SqlConnection conexion)
        {
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, conexion);
            return adaptador;
        }

        public DataTable ObtenerTabla(string nomTabla,string consulta)
        {
            DataSet ds = new DataSet();
            SqlConnection conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(consulta, conexion);
            adp.Fill(ds, nomTabla);
            conexion.Close();
            return ds.Tables[nomTabla];
        }

        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            Conexion.Close();
            return estado;
        }
        
        public string obtenerDatoString(string consulta)
        {
            string datoString;
            SqlConnection conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, conexion);
            datoString = Convert.ToString(cmd.ExecuteScalar());
            conexion.Close();
            return datoString;
        }

        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }


    }
}
