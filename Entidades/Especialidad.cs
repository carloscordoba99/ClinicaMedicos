using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Especialidad
    {
        private int idEspecilidad;
        private string descripcion;
        public Especialidad() { }
        public int getId()
        {
            return idEspecilidad;
        }
        public void setId(int id)
        {
            this.idEspecilidad = id;
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

