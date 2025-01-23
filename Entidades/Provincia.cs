using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Provincia
    {
        private int id;
        private string descripcion;

        public Provincia()
        {

        }

        public int getId()
        {
            return id;
        }
        public void setId(int id)
        {
            this.id = id;
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
