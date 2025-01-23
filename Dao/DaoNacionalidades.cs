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
    public class DaoNacionalidades
    {
        AccesoDatos ds = new AccesoDatos();

        /*public Provincia getNacionalidad(Nacionalidad nc)
        {
            DataTable tabla = ds.ObtenerTabla("Provincias", "Select * from Provincias where IdProvincia_Provincia = " + pr.getId());
            pr.setId(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            pr.setDescripcion(tabla.Rows[0][0].ToString());
            return pr;
        }*/
        public DataTable getTablaNacionalidades()
        {
            //List<Provincia> lista = new List<Provincia>();
            DataTable tabla = ds.ObtenerTabla("Nacionalidades", "Select * from Nacionalidades");
            return tabla;
        }
    }
}
