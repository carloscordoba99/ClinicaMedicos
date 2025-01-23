using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;

namespace Negocio
{
    public class NegocioProvincias
    {

        public DataTable GetTabla(string nacionalidad)
        {
            DaoProvincias dao = new DaoProvincias();
            return dao.getTablaProvincias(nacionalidad);
        }
       

    }
}
