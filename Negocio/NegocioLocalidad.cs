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
    public class NegocioLocalidad
    {

        public DataTable GetTabla(string prov)
        {
            DaoLocalidades dao = new DaoLocalidades();
            return dao.getTablaLocalidades(prov);
        }


    }
}
