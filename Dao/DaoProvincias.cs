using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DaoProvincias
    {
        AccesoDatos ds = new AccesoDatos();
       public Provincia getProvincia(Provincia pr)
        {
            DataTable tabla = ds.ObtenerTabla("Provincias", "Select * from Provincias where IdProvincia_Provincia = " + pr.getId());
            pr.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            pr.setDescripcion(tabla.Rows[0][0].ToString());
            return pr;
        }

        public DataTable getTablaProvincias(string nacio)
        {
            //List<Localidad> lista = new List<Localidad>();
            string consulta = "Select IdProvincia_Provincia, Descripcion_Provincia from " +
                "Provincias INNER JOIN Nacionalidades ON IdNacionalidad = IdNacionalidad_P " +
                "WHERE IdNacionalidad ='" + nacio + "'";
            DataTable tabla = ds.ObtenerTabla("Provincias", consulta);
            return tabla;

        }

        /*public DataTable getTablaProvincias(string prov)
        {
            //List<Localidad> lista = new List<Localidad>();
            string consulta = "Select IdLocalidad_L, Descripcion_L, IdProvincia_L from " +
                "Localidades INNER JOIN Provincias ON IdProvincia_L = IdProvincia_Provincia " +
                "WHERE IdProvincia_L ='" + prov + "'";
            DataTable tabla = ds.ObtenerTabla("Provincias", consulta);
            return tabla;

        }*/
        /*public DataTable getTablaProvincias()
        {
            List<Provincia> lista = new List<Provincia>();
            DataTable tabla = ds.ObtenerTabla("Provincias", "Select * from Provincias");
            return tabla;
        }*/
    }
}
