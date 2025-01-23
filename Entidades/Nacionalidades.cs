using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Nacionalidades
    {
        private int idNacionalidad;
        private string descripcion;

        public Nacionalidades()
        {

        }

        public int getId()
        {
            return idNacionalidad;
        }
        public void setId(int id)
        {
            this.idNacionalidad = id;
        }
        public string getDescripcion()
        {
            return descripcion;
        }
        public void setDescripcion(string descrip)
        {
            this.descripcion = descrip;
        }
    }
}
