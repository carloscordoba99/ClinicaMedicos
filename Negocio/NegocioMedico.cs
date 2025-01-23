using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class NegocioMedico
    {
        public bool agregarMedico(int legajo, string provincia, string localidad, int especialidad, string usuario,string pass, string dni,
            string nombre,string apellido,string sexo,string nacionalidad, DateTime date, string direccion,string email,string telefono, char dia,
            int horario, bool estado
            )
        {
            int cantFilas = 0;

            Medico med = new Medico();
            med.setLegajo(legajo);
            med.setIdProvincia(provincia);
            med.setIdLocalidad(localidad);
            med.setIdEspecialidad(especialidad);
            med.setUsuario(usuario);
            med.setPass(pass);
            med.setDni(dni);
            med.setNombre(nombre);
            med.setApellido(apellido);
            med.setSexo(sexo);
            med.setNacionalidad(nacionalidad);
            med.setFechaNacimiento(date);
            med.setDireccion(direccion);
            med.setEmail(email);
            med.setTelefono(telefono);
            med.setIdDia(dia);
            med.setIdHorario(horario);
            med.setEstado(estado);

            DaoMedicos dao = new DaoMedicos();
            if (dao.existeMedico(med) == false)
            {
                cantFilas = dao.agregarMedico(med);
            }

            if (cantFilas == 1)
                return true;
            else
                return false;
        }

        public bool bajaMedicoNegocio(int legajo)
        {
            int cantFilas = 0;
            DaoMedicos obj = new DaoMedicos();
            cantFilas = obj.bajaMedicoDao(legajo);
            if (cantFilas == 1) { return true; }
            else { return false; }
        }

        public DataTable listarMedicos()
        {
            DaoMedicos obj = new DaoMedicos();
            return obj.getTablaMedicos();
        }

        public string obtenerUsuarioPreModificarNegocio(int legajo)
        {
            DaoMedicos obj = new DaoMedicos();
            string usuario = obj.obtenerUsuarioPreModificarDao(legajo);
            return usuario;
        }
        public DataTable filtrarMedicoXUsuario(string usuario)
        {
            DaoMedicos obj = new DaoMedicos();
            DataTable table = obj.getMedicoPorUsuario(usuario);
            return table;

        }

        public int getDiaxMedico(string legajo)
        {

            
            DaoMedicos daom = new DaoMedicos();
            int dia = daom.getDiaxMedico(legajo);
            return dia;


        }
        public string obtenerPassPreModificarNegocio(int legajo)
        {
            DaoMedicos obj = new DaoMedicos();
            string pass = obj.obtenerPassPreModificarDao(legajo);
            return pass;
        }

        public bool modificarMedicoNegocio(int legajo, string IdProvincia, string IdLocalidad, int IdEspecialidad, string usuario, string pass, string dni, string nombre,
            string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado)
        {
            int cantFilas = 0;
            DaoMedicos obj = new DaoMedicos();
            cantFilas = obj.modificarMedicoDao(legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuario, pass, dni, nombre,
            apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado);
            if (cantFilas == 1) { return true; }
            else { return false; }
        }

        public bool modificarMedicoUsuarioNegocio(int legajo, string IdProvincia, string IdLocalidad, int IdEspecialidad, string usuario, string pass, string dni, string nombre,
            string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado, string usuarioBusqueda)
        {
            int cantFilas = 0;
            DaoMedicos obj = new DaoMedicos();
            cantFilas = obj.modificarMedicoUsuarioDao(legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuario, pass, dni, nombre,
            apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado, usuarioBusqueda);
            if (cantFilas == 1) { return true; }
            else { return false; }
        }

        public DataTable crearTabla()
        {
            DataTable obj = new DataTable();
            DataColumn columna = new DataColumn("Legajo_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("IdProvincia_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("IdLocalidad_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("IdEspecialidad_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("NombreUsuario_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("PassUsuario_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Dni_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Nombre_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Apellido_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Sexo_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Nacionalidad_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("FechaNacimiento_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Direccion_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Email_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Telefono_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("IdDia_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("IdHorario_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            columna = new DataColumn("Estado_M", System.Type.GetType("System.String"));
            obj.Columns.Add(columna);

            return obj;
        }

        
        public void agregarFilaTabla(DataTable tabla, int legajo, string IdProvincia, string IdLocalidad, string IdEspecialidad, string usuario, string pass, string dni, string nombre, string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado)
        {
            DataRow obj = tabla.NewRow();
            obj["Legajo_M"] = legajo;
            obj["IdProvincia_M"] = IdProvincia;
            obj["IdLocalidad_M"] = IdLocalidad;
            obj["IdEspecialidad_M"] = IdEspecialidad;
            obj["NombreUsuario_M"] = usuario;
            obj["PassUsuario_M"] = pass;
            obj["Dni_M"] = dni;
            obj["Nombre_M"] = nombre;
            obj["Apellido_M"] = apellido;
            obj["Sexo_M"] = sexo;
            obj["Nacionalidad_M"] = nacionalidad;
            obj["FechaNacimiento_M"] = fechaNacimiento;
            obj["Direccion_M"] = direccion;
            obj["Email_M"] = email;
            obj["Telefono_M"] = telefono;
            obj["IdDia_M"] = IdDia;
            obj["IdHorario_M"] = IdHorario;
            obj["Estado_M"] = estado;
            tabla.Rows.Add(obj);
        }

        public DataTable rellenoTabla(DataTable tabla, DaoMedicos obj, DataTable tablaBD)
        {
            if (Convert.ToInt32(tablaBD.Rows.Count) > 0)
            {
                for (int i = 0; i < tablaBD.Rows.Count; i++)
                {
                    int legajo = Convert.ToInt32(tablaBD.Rows[i][0]);
                    string IdProvincia = obj.obtenerNombreProvincia(Convert.ToString(tablaBD.Rows[i][1]));
                    string IdLocalidad = obj.obtenerNombreLocalidad(Convert.ToString(tablaBD.Rows[i][2]));
                    string IdEspecialidad = obj.obtenerNombreEspecialidad(Convert.ToString(tablaBD.Rows[i][3]));
                    string usuario = Convert.ToString(tablaBD.Rows[i][4]);
                    string pass = Convert.ToString(tablaBD.Rows[i][5]);
                    string dni = Convert.ToString(tablaBD.Rows[i][6]);
                    string nombre = Convert.ToString(tablaBD.Rows[i][7]);
                    string apellido = Convert.ToString(tablaBD.Rows[i][8]);
                    string sexo = Convert.ToString(tablaBD.Rows[i][9]);
                    string nacionalidad = obj.obtenerNombreNacionalidad(Convert.ToInt32(tablaBD.Rows[i][10]));
                    DateTime fechaNacimiento = Convert.ToDateTime(tablaBD.Rows[i][11]);
                    string direccion = Convert.ToString(tablaBD.Rows[i][12]);
                    string email = Convert.ToString(tablaBD.Rows[i][13]);
                    string telefono = Convert.ToString(tablaBD.Rows[i][14]);
                    string IdDia = obj.obtenerDescripcionDias(Convert.ToString(tablaBD.Rows[i][15]));
                    int IdHorario = Convert.ToInt32(tablaBD.Rows[i][16]);
                    bool estado = Convert.ToBoolean(tablaBD.Rows[i][17]);
                    agregarFilaTabla(tabla, legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuario, pass, dni, nombre, apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado);
                }
            }
            return tabla;
        }

        public DataTable FilasMedicos(DataTable tabla)
        {
            DaoMedicos obj = new DaoMedicos();
            DataTable tablaBD = new DataTable();
            tablaBD = obj.getTablaMedicos();

            rellenoTabla(tabla, obj, tablaBD);
            return tabla;
        }

        public DataTable FilasMedicosFiltro(DataTable tabla, string filtro)
        {
            DaoMedicos obj = new DaoMedicos();
            DataTable tablaBD = new DataTable();
            tablaBD = obj.getTablaMedicosFiltrada(filtro);

            rellenoTabla(tabla, obj, tablaBD);
            return tabla;
        }

        public DataTable FilasMedicosFiltroExacta(DataTable tabla, string filtro)
        {
            DaoMedicos obj = new DaoMedicos();
            DataTable tablaBD = new DataTable();
            tablaBD = obj.getTablaMedicosFiltradaExacta(filtro);

            rellenoTabla(tabla, obj, tablaBD);
            return tabla;
        }
        public DataTable FilasMedicoEspecialidad(DataTable table, int especialidad)
        {
            DaoMedicos obj = new DaoMedicos();
            DataTable tablaBD = new DataTable();
            tablaBD = obj.getMedicoEspecialidad(especialidad);
            rellenoTabla(table, obj, tablaBD);
            return table;
        }

        public string obtenerProvinciaIDnegocio(string nombreProvincia)
        {
            string idProvincia;
            DaoMedicos obj = new DaoMedicos();
            idProvincia = obj.obtenerProvinciaIDDAO(nombreProvincia);
            return idProvincia;
        }

        public string obtenerLocalidadIDnegocio(string nombreLocalidad)
        {
            string idLocalidad;
            DaoMedicos obj = new DaoMedicos();
            idLocalidad = obj.obtenerLocalidadIDDAO(nombreLocalidad);
            return idLocalidad;
        }

        public int obtenerEspecialidadIDnegocio(string nombreEspecialidad)
        {
            int idEspecialidad;
            DaoMedicos obj = new DaoMedicos();
            idEspecialidad = obj.obtenerEspecialidadIDDAO(nombreEspecialidad);
            return idEspecialidad;
        }

        public string obtenerIdNacionalidadNegocio(string nombreNacionalidad)
        {
            string idNacionalidad;
            DaoMedicos obj = new DaoMedicos();
            idNacionalidad = obj.obtenerIdNacionalidadDAO(nombreNacionalidad);
            return idNacionalidad;
        }

        public string obtenerIdDiasNegocio(string descripcionDias)
        {
            string idDias;
            DaoMedicos obj = new DaoMedicos();
            idDias = obj.obtenerIdDiasDAO(descripcionDias);
            return idDias;
        }
    }
}
