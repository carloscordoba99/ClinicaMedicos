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
   public class DaoEspecialidad
    {
        AccesoDatos ds = new AccesoDatos();
        public Especialidad GetEspecialidad(Especialidad espe)
        {
            DataTable tabla = ds.ObtenerTabla("Especialidades", "Select * from Especialidades where IdEspecilidad_E = " + espe.getId());
            espe.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            espe.setDescripcion(tabla.Rows[0][0].ToString());
            return espe;
        }
        public DataTable getTablaEspecialidades()
        {
            List<Especialidad> lista = new List<Especialidad>();
            DataTable tabla = ds.ObtenerTabla("Especialidades", "Select * from Especialidades");
            return tabla;

        }



    }
}
