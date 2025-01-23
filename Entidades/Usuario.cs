using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private string nombreUsuario;
        private string passUsuario;
        private bool esAdministrador;
        private bool estadoUsuario;

        //sets y gets
        public void setNombreUsuario(string nom) { nombreUsuario = nom; }
        public void setContraseñaUsuario(string contra) { passUsuario = contra; }
        public void setAdministrador(bool estado) { esAdministrador = estado; }
        public void setEstadoUsuario(bool estado) { estadoUsuario = estado; }

        public string getNombreUsuario() { return nombreUsuario; }
        public string getContraseñaUsuario() { return passUsuario; }
        public bool getAdministrador() { return esAdministrador; }
        public bool getEstadoUsuario() { return estadoUsuario; }
    }
}
