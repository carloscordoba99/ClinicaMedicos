using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Pacientes
    {
        int dniPaciente;
        private string nombrePaciente;
        private string apellidoPaciente;
        private string sexoPaciente;
        private string nacionalidad;
        private DateTime fechaNac;
        private string direccion;
        private string localidad;
        private string provincia;
        private string mail;
        private string telefono;
        private bool estado;

        public void setdni(int dnip) { dniPaciente = dnip; }
        public void setnombre(string nom) { nombrePaciente = nom; }
        public void setapellido(string ape) { apellidoPaciente = ape; }

        public void setsexo(string dni) { sexoPaciente = dni; }
        public void setnacionalidad(string nom) { nacionalidad = nom; }
        public void setfechaNac(DateTime ape) { fechaNac = ape; }

        public void setdireccion(string dirp) { direccion = dirp; }
        public void setlocalidad(string locp) { localidad = locp; }
        public void setprovincia(string prop) { provincia = prop; }

        public void setmail(string mailp) { mail = mailp; }
        public void settelefono(string tel) { telefono = tel; }
        public void setestado(bool estp) { estado = estp; }


        public int getDni() { return dniPaciente; }
        public string getNombre() { return nombrePaciente; }

        public string getApellido() { return apellidoPaciente; }
        public string getSexo() { return sexoPaciente; }

        public string getNacionalidad() { return nacionalidad; }
        public DateTime getfechaNac() { return fechaNac; }

        public string getdireccion() { return direccion; }
        public string getlocalidad() { return localidad; }

        public string getprovincia() { return provincia; }
        public string getmail() { return mail; }

        public string gettelefono() { return telefono; }
        public bool getestado() { return estado; }

    }
}
