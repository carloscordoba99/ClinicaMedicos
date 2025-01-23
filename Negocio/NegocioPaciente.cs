using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using System.Data;

namespace Negocio
{
    public class NegocioPaciente
    {
        DaoPaciente dao = new DaoPaciente();

        public DataTable obtenerTodos()
        {
            string nombreTabla = "Pacientes";
            DataTable tabla = new DataTable(nombreTabla);
            tabla = dao.obtenerTabla(nombreTabla, "SELECT DniPaciente_P, Descripcion_Provincia, Descripcion_L, Nombre_P, Apellido_P, Sexo_P, Descripcion_Nacionalidad, FechaNacimiento_P, Direccion_P, Email_P, Telefono_P, Estado_P FROM (((Pacientes INNER JOIN Provincias ON IdProvincia_Paciente = IdProvincia_Provincia) INNER JOIN Localidades ON IdLocalidad_Paciente = IdLocalidad_L) INNER JOIN Nacionalidades ON Nacionalidad_P = IdNacionalidad) where estado_p = 1;");
            return tabla;
        }
        public DataTable obtenerPacientesNormal()
        {
            string nombreTabla = "Pacientes";
            DataTable tabla = new DataTable(nombreTabla);
            tabla = dao.obtenerTabla(nombreTabla, "SELECT * FROM Pacientes");
            return tabla;
        }
        public DataTable obtenerPacientes(string nomCampo, string comparacion)
        {

            string nombreTabla = "Pacientes";
            string consulta = "SELECT DniPaciente_P, Descripcion_Provincia, Descripcion_L, Nombre_P, Apellido_P, Sexo_P, Descripcion_Nacionalidad, FechaNacimiento_P, Direccion_P, Email_P, Telefono_P, Estado_P FROM(((Pacientes INNER JOIN Provincias ON IdProvincia_Paciente = IdProvincia_Provincia) INNER JOIN Localidades ON IdLocalidad_Paciente = IdLocalidad_L) INNER JOIN Nacionalidades ON Nacionalidad_P = IdNacionalidad) where Estado_P = 1 AND " + nomCampo + " LIKE '%" + comparacion + "%'";
            DataTable tabla = new DataTable(nombreTabla);
            tabla = dao.obtenerTabla(nombreTabla, consulta);
            return tabla;
        }
        public DataTable obtenerPacientesExacto(string dni)
        {

            string nombreTabla = "Pacientes";
            string consulta = "SELECT DniPaciente_P, Descripcion_Provincia, Descripcion_L, Nombre_P, Apellido_P, Sexo_P, Descripcion_Nacionalidad, FechaNacimiento_P, Direccion_P, Email_P, Telefono_P, Estado_P FROM (((Pacientes INNER JOIN Provincias ON IdProvincia_Paciente = IdProvincia_Provincia) INNER JOIN Localidades ON IdLocalidad_Paciente = IdLocalidad_L) INNER JOIN Nacionalidades ON Nacionalidad_P = IdNacionalidad) WHERE DniPaciente_P = " + dni;
            DataTable tabla = new DataTable(nombreTabla);
            tabla = dao.obtenerTabla(nombreTabla, consulta);
            return tabla;
        }

        public bool agregarPaciente(int dniPaciente, string nombrePaciente, string apellidoPaciente, string sexo, string nacionalidad, DateTime fechaNac, string direccion, string localidad,
            string provincia, string mail, string telefono, bool estado)
        {
            int cantFilas = 0;

            Pacientes pac = new Pacientes();
            pac.setdni(dniPaciente);
            pac.setnombre(nombrePaciente);
            pac.setapellido(apellidoPaciente);
            pac.setsexo(sexo);
            pac.setnacionalidad(nacionalidad);
            pac.setfechaNac(fechaNac);
            pac.setdireccion(direccion);
            pac.setlocalidad(localidad);
            pac.setprovincia(provincia);
            pac.setmail(mail);
            pac.settelefono(telefono);
            pac.setestado(estado);

            DaoPaciente daop = new DaoPaciente();
            if (daop.existePaciente(pac) == false)
            {
                cantFilas = daop.agregarPaciente(pac);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }

        public bool bajaPacienteNegocio(int dni)
        {
            int cantFilas = 0;
            DaoPaciente dp = new DaoPaciente();
            cantFilas = dp.bajaPacienteDao(dni);
            if (cantFilas == 1) { return true; }
            else { return false; }
        }

        public bool ModificarPaciente(Pacientes obj)
        {
            DaoPaciente obj2 = new DaoPaciente();
            bool exito = obj2.ActualizarPaciente(obj);
            return exito;
        }

        public string obtenerProvinciaIDnegocio(string nombreProvincia)
        {
            string idProvincia;
            DaoPaciente obj = new DaoPaciente();
            idProvincia = obj.obtenerProvinciaIDDAO(nombreProvincia);
            return idProvincia;
        }

        public string obtenerLocalidadIDnegocio(string nombreLocalidad)
        {
            string idLocalidad;
            DaoPaciente obj = new DaoPaciente();
            idLocalidad = obj.obtenerLocalidadIDDAO(nombreLocalidad);
            return idLocalidad;
        }

        public string obtenerNacionalidadIDnegocio(string nombreNacionalidad)
        {
            string idNacionalidad;  
            DaoPaciente obj = new DaoPaciente();
            idNacionalidad = obj.obtenerNacionalidadIDDAO(nombreNacionalidad);
            return idNacionalidad;
        }

        // Promedio de edad de los pacientes genero hombre 
        public float CalcularPromedioEdadPacientes(string sexo)
        {
            NegocioPaciente obj = new NegocioPaciente();
            DataTable tablaPacien = obj.obtenerPacientesNormal();
            DateTime hoy = DateTime.Today;
            float promedioEdades = tablaPacien.AsEnumerable()
                .Where(row => row.Field<string>("Sexo_P") == sexo)
                .Select(row => (float)((hoy - row.Field<DateTime>("FechaNacimiento_P")).Days / 365.25))
                .Average();

            return promedioEdades;
        }

    }
}
