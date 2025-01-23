using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Localidad
    {
        private int idLocalidad;
        private int idProvincia;
        private string descripcion;
        public Localidad() { }
        public int getId()
        {
            return idLocalidad;
        }
        public void setId(int id)
        {
            this.idLocalidad = id;
        }
        public string getDescripcion()
        {
            return descripcion;
        }
        public void setDescripcion(string descrip)
        {
            this.descripcion = descrip;
        }
        public int getIdPro()
        {

            return idProvincia;
        }
        public void setIdPro(int idPro) { this.idProvincia = idPro; }
    }
}
