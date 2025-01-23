using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using System.Data;

namespace Negocio
{
    public class NegocioNacionalidades
    {
        public DataTable GetTabla()
        {
            DaoNacionalidades dao = new DaoNacionalidades();
            return dao.getTablaNacionalidades();
        }
    }
}
