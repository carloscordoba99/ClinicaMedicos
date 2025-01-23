using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DaoMedicos
    {
        AccesoDatos ds = new AccesoDatos();
        public Medico getMedico(Medico med)
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "Select * from Medicos where Legajo_M=" + med.getLegajo());
            med.setLegajo(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            med.setNombre(tabla.Rows[0][1].ToString());
            med.setApellido(tabla.Rows[0][2].ToString());
            return med;
        }

        //Funcion que devuelve un objeto Medico a traves de su nombre y apellido

        public int getDiaxMedico(string legajo) {

            string consulta = "select IdDia_DXM from DiasXMedicos inner join Medicos on Legajo_DXM = Legajo_M where Legajo_M = '" +legajo+ "'";
            DataTable tabla = ds.ObtenerTabla("DiasXMedicos", consulta);
            if (tabla.Rows.Count != 0)
            {
                int dia = Convert.ToInt32(tabla.Rows[0][0]);
                return dia;
            }
            else {
                return 0;
            }


        }
        public Medico getMedicoPorNombre(Medico med)
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "Select * from Medicos where Nombre_M='" + med.getNombre()+"' AND Apellido_M='"+ med.getApellido() +"'");
            med.setLegajo(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            med.setNombre(tabla.Rows[0][7].ToString());
            med.setApellido(tabla.Rows[0][8].ToString());
            med.setIdDia(Convert.ToChar(tabla.Rows[0][15]));
            med.setIdHorario(Convert.ToInt32(tabla.Rows[0][16]));
            return med;
        }
        
            public DataTable getTablaMedicos()
        {
            DataTable tabla = ds.ObtenerTabla("Medicos","Select * from Medicos where Estado_M = 1");
            return tabla;
        }

        public DataTable getMedicoPorUsuario(string usuario)
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "SELECT * from Medicos WHERE NombreUsuario_M ='" + usuario + "'");
            return tabla;

        }
        public DataTable getTablaMedicosFiltrada(string filtro)
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "Select * from Medicos WHERE Nombre_M LIKE '%" + filtro + "%'");
            return tabla;
        }

        public DataTable getMedicoEspecialidad(int idEspecialidad)
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "Select * from Medicos WHERE IdEspecialidad_M = '" + idEspecialidad + "'");
            return tabla;
        }

        public DataTable getTablaMedicosFiltradaExacta(string filtro)
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "Select * from Medicos WHERE Legajo_M =" + filtro);
            return tabla;
        }

      

        public Boolean existeMedico(Medico med)
        {
            string consulta = "Select * from Medicos where Legajo_M='" + med.getLegajo() + "'";
            return ds.existe(consulta);
        }

        public int agregarMedico( Medico med)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarMedico(ref comando, med);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarMedico");
        }

        public int bajaMedicoDao(int legajo)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroBajaMedico(ref comando, legajo);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spBajaMedico");
        }

        public int cantMedicos()
        {
            DataTable tabla = ds.ObtenerTabla("Medicos", "Select * from Medicos");
            int cantTablas = Convert.ToInt32(tabla.Rows.Count);
            return cantTablas;
        }

        public string obtenerNombreProvincia(string idProvincia)
        {
            string nombreProvincia;
            nombreProvincia = ds.obtenerDatoString("SELECT Descripcion_Provincia FROM Provincias WHERE IdProvincia_Provincia = " + idProvincia);
            return nombreProvincia;
        }

        public string obtenerProvinciaIDDAO(string nombreProvincia)
        {
            string idProvincia;
            idProvincia = ds.obtenerDatoString("SELECT IdProvincia_Provincia FROM Provincias WHERE Descripcion_Provincia = '" + nombreProvincia + "'");
            return idProvincia;
        }

        public string obtenerNombreLocalidad(string idLocalidad)
        {
            string nombreLocalidad;
            nombreLocalidad = ds.obtenerDatoString("SELECT Descripcion_L FROM Localidades WHERE IdLocalidad_L = " + idLocalidad);
            return nombreLocalidad;
        }

        public string obtenerLocalidadIDDAO(string nombreLocalidad)
        {
            string idLocalidad;
            idLocalidad = ds.obtenerDatoString("SELECT IdLocalidad_L FROM Localidades WHERE Descripcion_L = '" + nombreLocalidad + "'");
            return idLocalidad;
        }

        public string obtenerNombreEspecialidad(string idEspecialidad)
        {
            string nombreEspecialidad;
            nombreEspecialidad = ds.obtenerDatoString("SELECT Descripcion_E FROM Especialidades WHERE IdEspecialidad_E = " + idEspecialidad);
            return nombreEspecialidad;
        }

        public int obtenerEspecialidadIDDAO(string nombreEspecialidad)
        {
            int EspecialidadID;
            EspecialidadID = Convert.ToInt32(ds.obtenerDatoString("SELECT IdEspecialidad_E FROM Especialidades WHERE Descripcion_E = '" + nombreEspecialidad + "'"));
            return EspecialidadID;
        }

        public string obtenerIdNacionalidadDAO(string nombreNacionalidad)
        {
            string idNacionalidad;
            idNacionalidad = Convert.ToString(ds.obtenerDatoString("SELECT IdNacionalidad FROM Nacionalidades WHERE Descripcion_Nacionalidad = '" + nombreNacionalidad + "'"));
            return idNacionalidad;
        }

        public string obtenerNombreNacionalidad(int idNacionalidad)
        {
            string nombreNacionalidad;
            nombreNacionalidad = ds.obtenerDatoString("SELECT Descripcion_Nacionalidad FROM Nacionalidades WHERE IdNacionalidad = " + idNacionalidad);
            return nombreNacionalidad;
        }

        public string obtenerDescripcionDias(string idDias)
        {
            string descripcionDias;
            descripcionDias = ds.obtenerDatoString("SELECT Descripcion_D FROM Dias WHERE IdDia_D = " + idDias);
            return descripcionDias;
        }

        public string obtenerIdDiasDAO(string descripcionDias)
        {
            string idDias;
            idDias = ds.obtenerDatoString("SELECT IdDia_D FROM Dias WHERE Descripcion_D = '" + descripcionDias + "'");
            return idDias;
        }

        public string obtenerUsuarioPreModificarDao(int legajo)
        {
            string usuario;
            usuario = ds.obtenerDatoString("SELECT NombreUsuario_A FROM Administradores INNER JOIN Medicos ON NombreUsuario_A = NombreUsuario_M WHERE Legajo_M = " + Convert.ToString(legajo));
            return usuario;
        }

        public string obtenerPassPreModificarDao(int legajo)
        {
            string pass;
            pass = ds.obtenerDatoString("SELECT PassUsuario_M FROM Administradores INNER JOIN Medicos ON NombreUsuario_A = NombreUsuario_M WHERE Legajo_M = " + Convert.ToString(legajo));
            return pass;
        }

        public int modificarMedicoDao(int legajo, string IdProvincia, string IdLocalidad, int IdEspecialidad, string usuario, string pass, string dni, string nombre,
            string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosModificarMedicos(ref comando, legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuario, pass, dni, nombre,
                apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarMedicos");
        }

        public int modificarMedicoUsuarioDao(int legajo, string IdProvincia, string IdLocalidad, int IdEspecialidad, string usuario, string pass, string dni, string nombre,
            string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado, string usuarioBusqueda)
        {
            string usuarioMedico = usuario;
            string passMedico = pass;
            SqlCommand comando = new SqlCommand();
            ArmarParametrosModificarMedicoUsuarios(ref comando, usuario, pass, usuarioBusqueda, legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuarioMedico, passMedico, dni, nombre,
                apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarMedicoUsuarios");
        }

        private void ArmarParametrosAgregarMedico(ref SqlCommand Comando, Medico med)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Legajo_M", SqlDbType.Int);
            SqlParametros.Value = med.getLegajo();
            SqlParametros = Comando.Parameters.Add("@ID_PROVINCIA_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getIdProvincia();
            SqlParametros = Comando.Parameters.Add("@ID_LOCALIDAD_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getIdLocalidad();
            SqlParametros = Comando.Parameters.Add("@ID_ESPECIALIDAD_M", SqlDbType.Int);
            SqlParametros.Value = med.getIdEspecialidad();
            SqlParametros = Comando.Parameters.Add("@ID_HORARIO_M", SqlDbType.Int);
            SqlParametros.Value = med.getIdHorario();
            SqlParametros = Comando.Parameters.Add("@ID_DIA_M", SqlDbType.Char);
            SqlParametros.Value = med.getIdDia();
            SqlParametros = Comando.Parameters.Add("@USUARIO_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getUsuario();
            SqlParametros = Comando.Parameters.Add("@PASS_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getPass();
            SqlParametros = Comando.Parameters.Add("@DNI_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getDni();
            SqlParametros = Comando.Parameters.Add("@NOMBRE_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getNombre();
            SqlParametros = Comando.Parameters.Add("@APELLIDO_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getApellido();
            SqlParametros = Comando.Parameters.Add("@SEXO_M", SqlDbType.Char);
            SqlParametros.Value = med.getSexo();
            SqlParametros = Comando.Parameters.Add("@NACIONALIDAD_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getNacionalidad();
            SqlParametros = Comando.Parameters.Add("@DIRECCION_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getDireccion();
            SqlParametros = Comando.Parameters.Add("@EMAIL_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getEmail();
            SqlParametros = Comando.Parameters.Add("@TELEFONO_M", SqlDbType.VarChar);
            SqlParametros.Value = med.getTelefono();
            SqlParametros = Comando.Parameters.Add("@FECHA_NACIMIENTO_M", SqlDbType.Date);
            SqlParametros.Value = med.getFechaNacimiento();
            SqlParametros = Comando.Parameters.Add("@ESTADO_M", SqlDbType.Bit);
            SqlParametros.Value = med.getEstado();
        }

        private void ArmarParametroBajaMedico(ref SqlCommand comando, int legajo)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@Legajo_M", SqlDbType.Int);
            SqlParametros.Value = legajo;
        }

        private void ArmarParametrosModificarMedicos(ref SqlCommand Comando, int legajo, string IdProvincia, string IdLocalidad, int IdEspecialidad, string usuario, string pass, string dni, string nombre,
            string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Legajo_M", SqlDbType.Int);
            SqlParametros.Value = legajo;
            SqlParametros = Comando.Parameters.Add("@ID_PROVINCIA_M", SqlDbType.VarChar);
            SqlParametros.Value = IdProvincia;
            SqlParametros = Comando.Parameters.Add("@ID_LOCALIDAD_M", SqlDbType.VarChar);
            SqlParametros.Value = IdLocalidad;
            SqlParametros = Comando.Parameters.Add("@ID_ESPECIALIDAD_M", SqlDbType.Int);
            SqlParametros.Value = IdEspecialidad;
            SqlParametros = Comando.Parameters.Add("@USUARIO_M", SqlDbType.VarChar);
            SqlParametros.Value = usuario;
            SqlParametros = Comando.Parameters.Add("@PASS_M", SqlDbType.VarChar);
            SqlParametros.Value = pass;
            SqlParametros = Comando.Parameters.Add("@DNI_M", SqlDbType.VarChar);
            SqlParametros.Value = dni;
            SqlParametros = Comando.Parameters.Add("@NOMBRE_M", SqlDbType.VarChar);
            SqlParametros.Value = nombre;
            SqlParametros = Comando.Parameters.Add("@APELLIDO_M", SqlDbType.VarChar);
            SqlParametros.Value = apellido;
            SqlParametros = Comando.Parameters.Add("@SEXO_M", SqlDbType.Char);
            SqlParametros.Value = sexo;
            SqlParametros = Comando.Parameters.Add("@NACIONALIDAD_M", SqlDbType.VarChar);
            SqlParametros.Value = nacionalidad;
            SqlParametros = Comando.Parameters.Add("@FECHA_NACIMIENTO_M", SqlDbType.DateTime);
            SqlParametros.Value = fechaNacimiento;
            SqlParametros = Comando.Parameters.Add("@DIRECCION_M", SqlDbType.VarChar);
            SqlParametros.Value = direccion;
            SqlParametros = Comando.Parameters.Add("@EMAIL_M", SqlDbType.VarChar);
            SqlParametros.Value = email;
            SqlParametros = Comando.Parameters.Add("@TELEFONO_M", SqlDbType.VarChar);
            SqlParametros.Value = telefono;
            SqlParametros = Comando.Parameters.Add("@ID_DIA_M", SqlDbType.Char);
            SqlParametros.Value = IdDia;
            SqlParametros = Comando.Parameters.Add("@ID_HORARIO_M", SqlDbType.Int);
            SqlParametros.Value = IdHorario;
            SqlParametros = Comando.Parameters.Add("@ESTADO_M", SqlDbType.Bit);
            SqlParametros.Value = estado;
        }

        private void ArmarParametrosModificarMedicoUsuarios(ref SqlCommand Comando, string usuario, string pass, string usuarioBusqueda, int legajo, string IdProvincia, string IdLocalidad, int IdEspecialidad, string usuarioMedico, string passMedico,
            string dni, string nombre, string apellido, string sexo, string nacionalidad, DateTime fechaNacimiento, string direccion, string email, string telefono, string IdDia, int IdHorario, bool estado)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@USUARIO_A", SqlDbType.VarChar);
            SqlParametros.Value = usuario;
            SqlParametros = Comando.Parameters.Add("@PASS_A", SqlDbType.VarChar);
            SqlParametros.Value = pass;
            SqlParametros = Comando.Parameters.Add("@Usuario_Busqueda", SqlDbType.VarChar);
            SqlParametros.Value = usuarioBusqueda;
            SqlParametros = Comando.Parameters.Add("@Legajo_M", SqlDbType.Int);
            SqlParametros.Value = legajo;
            SqlParametros = Comando.Parameters.Add("@ID_PROVINCIA_M", SqlDbType.VarChar);
            SqlParametros.Value = IdProvincia;
            SqlParametros = Comando.Parameters.Add("@ID_LOCALIDAD_M", SqlDbType.VarChar);
            SqlParametros.Value = IdLocalidad;
            SqlParametros = Comando.Parameters.Add("@ID_ESPECIALIDAD_M", SqlDbType.Int);
            SqlParametros.Value = IdEspecialidad;
            SqlParametros = Comando.Parameters.Add("@USUARIO_M", SqlDbType.VarChar);
            SqlParametros.Value = usuarioMedico;
            SqlParametros = Comando.Parameters.Add("@PASS_M", SqlDbType.VarChar);
            SqlParametros.Value = passMedico;
            SqlParametros = Comando.Parameters.Add("@DNI_M", SqlDbType.VarChar);
            SqlParametros.Value = dni;
            SqlParametros = Comando.Parameters.Add("@NOMBRE_M", SqlDbType.VarChar);
            SqlParametros.Value = nombre;
            SqlParametros = Comando.Parameters.Add("@APELLIDO_M", SqlDbType.VarChar);
            SqlParametros.Value = apellido;
            SqlParametros = Comando.Parameters.Add("@SEXO_M", SqlDbType.Char);
            SqlParametros.Value = sexo;
            SqlParametros = Comando.Parameters.Add("@NACIONALIDAD_M", SqlDbType.VarChar);
            SqlParametros.Value = nacionalidad;
            SqlParametros = Comando.Parameters.Add("@FECHA_NACIMIENTO_M", SqlDbType.DateTime);
            SqlParametros.Value = fechaNacimiento;
            SqlParametros = Comando.Parameters.Add("@DIRECCION_M", SqlDbType.VarChar);
            SqlParametros.Value = direccion;
            SqlParametros = Comando.Parameters.Add("@EMAIL_M", SqlDbType.VarChar);
            SqlParametros.Value = email;
            SqlParametros = Comando.Parameters.Add("@TELEFONO_M", SqlDbType.VarChar);
            SqlParametros.Value = telefono;
            SqlParametros = Comando.Parameters.Add("@ID_DIA_M", SqlDbType.Char);
            SqlParametros.Value = IdDia;
            SqlParametros = Comando.Parameters.Add("@ID_HORARIO_M", SqlDbType.Int);
            SqlParametros.Value = IdHorario;
            SqlParametros = Comando.Parameters.Add("@ESTADO_M", SqlDbType.Bit);
            SqlParametros.Value = estado;
        }
    }
}

/* Procedimiento para dar de baja un Médico
CREATE PROCEDURE spBajaMedicos
@Legajo_M INT
AS
UPDATE Medicos SET Estado_P = 0 WHERE Legajo_M = @Legajo_M AND Estado_P = 1
GO
*/

/* Procedimiento para modificar Médico (sin haber cambiado usuario o contraseña)
CREATE PROCEDURE spModificarMedicos
@LEGAJO_M INT,
@ID_PROVINCIA_M VARCHAR(30),
@ID_LOCALIDAD_M VARCHAR(30),
@ID_ESPECIALIDAD_M INT,
@USUARIO_M VARCHAR(30),
@PASS_M VARCHAR(30),
@DNI_M VARCHAR(8),
@NOMBRE_M VARCHAR(30),
@APELLIDO_M VARCHAR(30),
@SEXO_M CHAR(1),
@NACIONALIDAD_M VARCHAR(40),
@FECHA_NACIMIENTO_M DATE,
@DIRECCION_M VARCHAR(40),
@EMAIL_M VARCHAR(40),
@TELEFONO_M VARCHAR(30),
@ID_DIA_M CHAR(1),
@ID_HORARIO_M INT,
@ESTADO_M BIT
AS
UPDATE Medicos SET Legajo_M = @LEGAJO_M, IdProvincia_M = @ID_PROVINCIA_M, IdLocalidad_M = @ID_LOCALIDAD_M, IdEspecialidad_M = @ID_ESPECIALIDAD_M, NombreUsuario_M = @USUARIO_M, PassUsuario_M = @PASS_M,
Dni_M = @DNI_M, Nombre_M = @NOMBRE_M, Apellido_M = @APELLIDO_M, Sexo_M = @SEXO_M, Nacionalidad_M = @NACIONALIDAD_M, FechaNacimiento_M = @FECHA_NACIMIENTO_M, Direccion_M = @DIRECCION_M, Email_M = @EMAIL_M,
Telefono_M = @TELEFONO_M, IdDia_M = @ID_DIA_M, IdHorario_M = @ID_HORARIO_M, Estado_P = @ESTADO_M WHERE Legajo_M = @LEGAJO_M
GO
*/

/* Procedimiento para modificar Médico (al haber cambiado usuario o contraseña)
CREATE PROCEDURE spModificarMedicoUsuarios
@USUARIO_A VARCHAR(30),
@PASS_A VARCHAR(30),
@Usuario_Busqueda VARCHAR(30),
@LEGAJO_M INT,
@ID_PROVINCIA_M VARCHAR(30),
@ID_LOCALIDAD_M VARCHAR(30),
@ID_ESPECIALIDAD_M INT,
@USUARIO_M VARCHAR(30),
@PASS_M VARCHAR(30),
@DNI_M VARCHAR(8),
@NOMBRE_M VARCHAR(30),
@APELLIDO_M VARCHAR(30),
@SEXO_M CHAR(1),
@NACIONALIDAD_M VARCHAR(40),
@FECHA_NACIMIENTO_M DATE,
@DIRECCION_M VARCHAR(40),
@EMAIL_M VARCHAR(40),
@TELEFONO_M VARCHAR(30),
@ID_DIA_M CHAR(1),
@ID_HORARIO_M INT,
@ESTADO_M BIT
AS

Delete FROM Medicos WHERE NombreUsuario_M = @Usuario_Busqueda
Delete FROM Administradores WHERE NombreUsuario_A = @Usuario_Busqueda

Insert into Administradores (NombreUsuario_A, PassUsuario_A, EsAdministrador_A, Estado_A)
Select @USUARIO_A, @PASS_A, 0, 1

SET @USUARIO_M = @USUARIO_A
SET @PASS_M = @PASS_A

Insert into Medicos (Legajo_M, IdProvincia_M, IdLocalidad_M, IdEspecialidad_M, NombreUsuario_M,
 PassUsuario_M, Dni_M, Nombre_M, Apellido_M, Sexo_M, Nacionalidad_M, FechaNacimiento_M,
  Direccion_M, Email_M, Telefono_M, IdDia_M, IdHorario_M, Estado_P)
Select @LEGAJO_M, @ID_PROVINCIA_M, @ID_LOCALIDAD_M, @ID_ESPECIALIDAD_M, @USUARIO_M, @PASS_M, @DNI_M, @NOMBRE_M, @APELLIDO_M, @SEXO_M, @NACIONALIDAD_M, @FECHA_NACIMIENTO_M,
@DIRECCION_M, @EMAIL_M, @TELEFONO_M, @ID_DIA_M, @ID_HORARIO_M, @ESTADO_M
GO
*/