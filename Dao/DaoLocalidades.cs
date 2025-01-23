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
   public class DaoLocalidades
    {
        AccesoDatos ds = new AccesoDatos();
        public Localidad GetLocalidad(Localidad localidad)
        {
            DataTable tabla = ds.ObtenerTabla("Localidades", "Select * from Localidades where IdLocalidad_L = " + localidad.getId());
            localidad.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            localidad.setDescripcion(tabla.Rows[0][0].ToString());
            return localidad;
        }
        public DataTable getTablaLocalidades(string prov)
        {
            List<Localidad> lista = new List<Localidad>();
            string consulta = "Select IdLocalidad_L, Descripcion_L, IdProvincia_L from " +
                "Localidades INNER JOIN Provincias ON IdProvincia_L = IdProvincia_Provincia " +
                "WHERE IdProvincia_L ='" + prov + "'"; 
            DataTable tabla = ds.ObtenerTabla("Localidades", consulta);
            return tabla;

        }
    }
}
