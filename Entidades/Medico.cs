using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entidades
{
    public class Medico
    {
        private int Legajo, IdEspecialidad, IdHorario;
        private string Usuario, Pass, Dni, Nombre, Apellido, Nacionalidad, Direccion, Email, Telefono, IdProvincia, Idlocalidad,Sexo,NombreCompleto;
        private char IdDia;
        private DateTime fechaNacimiento;
        private bool Estado;

        public int getLegajo()
        {
            return Legajo;
        }
        public void setLegajo(int legajo)
        {
            this.Legajo = legajo;
        }

        public string getIdProvincia()
        {
            return IdProvincia;
        }
        public void setIdProvincia(string idProvincia)
        {
            this.IdProvincia = idProvincia;
        }

     
        public string getIdLocalidad()
        {
            return Idlocalidad;
        }
        public void setIdLocalidad(string idLocalidad)
        {
            this.Idlocalidad = idLocalidad;
        }


        public int getIdEspecialidad()
        {
            return IdEspecialidad;
        }
        public void setIdEspecialidad(int idEspecialidad)
        {
            this.IdEspecialidad = idEspecialidad;
        }

    
        public int getIdHorario()
        {
            return IdHorario;
        }
        public void setIdHorario(int idHorario)
        {
            this.IdHorario = idHorario;
        }

   
        public char getIdDia()
        {
            return IdDia;
        }
        public void setIdDia(char idDia)
        {
            this.IdDia = idDia;
        }

        public string getUsuario()
        {
            return Usuario;
        }
        public void setUsuario(string usuario)
        {
            this.Usuario = usuario;
        }

   
        public string getPass()
        {
            return Pass;
        }
        public void setPass(string pass)
        {
            this.Pass = pass;
        }


        public string getDni()
        {
            return Dni;
        }
        public void setDni(string dni)
        {
            this.Dni = dni;
        }


        public string getNombre()
        {
            return Nombre;
        }
        public void setNombre(string nombre)
        {
            this.Nombre = nombre;
        }


        public string getApellido()
        {
            return Apellido;
        }
        public void setApellido(string apellido)
        {
            this.Apellido = apellido;
        }


        public string getNacionalidad()
        {
            return Nacionalidad;
        }
        public void setNacionalidad(string nacionalidad)
        {
            this.Nacionalidad = nacionalidad;
        }
        public string getSexo() { return Sexo; }
        public void setSexo(string sexo) { this.Sexo = sexo; }

        public string getDireccion()
        {
            return Direccion;
        }
        public void setDireccion(string direccion)
        {
            this.Direccion = direccion;
        }

        public string getEmail()
        {
            return Email;
        }
        public void setEmail(string email)
        {
            this.Email = email;
        }


        public string getTelefono()
        {
            return Telefono;
        }
        public void setTelefono(string telefono)
        {
            this.Telefono = telefono;
        }

        public string getNombreCompleto()
        {
            return NombreCompleto;
        }
        public void setNombreCompleto(string nombreCompleto)
        {
            this.NombreCompleto = nombreCompleto;
        }

        public DateTime getFechaNacimiento()
        {
            return fechaNacimiento;
        }
        public void setFechaNacimiento(DateTime fechaNacimiento)
        {
            this.fechaNacimiento = fechaNacimiento;
        }

   
        public bool getEstado()
        {
            return Estado;
        }
        public void setEstado(bool estado)
        {
            this.Estado = estado;
        }


    }
}
