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
    public class DaoPaciente
    {
        AccesoDatos ds = new AccesoDatos();
        public DataTable obtenerTabla(string nomTabla, string consulta)
        {
            DataSet data = new DataSet();
            SqlConnection cn = ds.ObtenerConexion();
            SqlDataAdapter adap = ds.ObtenerAdaptador(consulta, cn);
            adap.Fill(data, nomTabla);
            return data.Tables[nomTabla];
        }

        public Boolean existePaciente(Pacientes pac)
        {
            string consulta = "Select * from Pacientes where DniPaciente_P='" + pac.getDni() + "'";
            return ds.existe(consulta);
        }

        public int agregarPaciente(Pacientes pac)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosPacienteAgregar(ref comando, pac);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarPaciente");
        }

        private void ArmarParametrosPacienteAgregar(ref SqlCommand Comando, Pacientes pac)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@DNI_P", SqlDbType.Int);
            SqlParametros.Value = pac.getDni();
            SqlParametros = Comando.Parameters.Add("@NOMBRE_P", SqlDbType.VarChar, 30);
            SqlParametros.Value = pac.getNombre();
            SqlParametros = Comando.Parameters.Add("@APELLIDO_P", SqlDbType.VarChar, 30);
            SqlParametros.Value = pac.getApellido();
            SqlParametros = Comando.Parameters.Add("@SEXO_P", SqlDbType.Char);
            SqlParametros.Value = pac.getSexo();
            SqlParametros = Comando.Parameters.Add("@NACIONALIDAD_P", SqlDbType.VarChar, 40);
            SqlParametros.Value = pac.getNacionalidad();
            SqlParametros = Comando.Parameters.Add("@FECHANAC_P", SqlDbType.Date);
            SqlParametros.Value = pac.getfechaNac();
            SqlParametros = Comando.Parameters.Add("@DIRECCION_P", SqlDbType.VarChar, 40);
            SqlParametros.Value = pac.getdireccion();
            SqlParametros = Comando.Parameters.Add("@LOCALIDAD_P", SqlDbType.VarChar, 30);
            SqlParametros.Value = pac.getlocalidad();
            SqlParametros = Comando.Parameters.Add("@PROVINCIA_P", SqlDbType.VarChar, 30);
            SqlParametros.Value = pac.getprovincia();
            SqlParametros = Comando.Parameters.Add("@EMAIL_P", SqlDbType.VarChar, 30);
            SqlParametros.Value = pac.getmail();
            SqlParametros = Comando.Parameters.Add("@TELEFONO_P", SqlDbType.VarChar, 30);
            SqlParametros.Value = pac.gettelefono();
            SqlParametros = Comando.Parameters.Add("@ESTADO_P", SqlDbType.Bit);
            SqlParametros.Value = pac.getestado();
        }

        public int bajaPacienteDao(int dni)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroBajaPaciente(ref comando, dni);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spBajaPaciente");

        }
        private void ArmarParametroBajaPaciente(ref SqlCommand comando, int dni)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@DNIPACIENTE_P", SqlDbType.Int);
            SqlParametros.Value = dni;
        }

        public bool ActualizarPaciente(Pacientes obj)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosPacienteAgregar(ref Comando, obj);
            AccesoDatos obj2 = new AccesoDatos();
            int FilasInsertadas = obj2.EjecutarProcedimientoAlmacenado(Comando, "spModificarPaciente");
            if (FilasInsertadas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        
        public string obtenerProvinciaIDDAO(string nombreProvincia)
        {
            string idProvincia;
            idProvincia = ds.obtenerDatoString("SELECT IdProvincia_Provincia FROM Provincias WHERE Descripcion_Provincia = '" + nombreProvincia + "'");
            return idProvincia;
        }
       
        public string obtenerLocalidadIDDAO(string nombreLocalidad)
        {
            string idLocalidad;
            idLocalidad = ds.obtenerDatoString("SELECT IdLocalidad_L FROM Localidades WHERE Descripcion_L = '" + nombreLocalidad + "'");
            return idLocalidad;
        }

        public string obtenerNacionalidadIDDAO(string nombreNacionalidad)
        {
            string idNacionalidad;
            idNacionalidad = ds.obtenerDatoString("SELECT IdNacionalidad FROM Nacionalidades WHERE Descripcion_Nacionalidad = '" + nombreNacionalidad + "'");
            return idNacionalidad;
        }
    }
}
/* Procedimiento para dar de baja un Paciente
        CREATE PROCEDURE spBajaPaciente
        @DNI_P INT
        AS
        UPDATE Pacientes SET Estado_P = 0 WHERE DniPaciente_P = @DNI_P AND Estado_P = 1
        GO
        */
/* Procedimiento para Modificar un Paciente
CREATE PROCEDURE spModificarPaciente
@DNI_P INT,
@NOMBRE_P VARCHAR(30),
@APELLIDO_P VARCHAR(30),
@SEXO_P CHAR(1),
@NACIONALIDAD_P VARCHAR(40),
@FECHANAC_P DATE,
@DIRECCION_P VARCHAR(40),
@LOCALIDAD_P VARCHAR(30),
@PROVINCIA_P VARCHAR(30),
@EMAIL_P VARCHAR(30),
@TELEFONO_P VARCHAR(30),
@ESTADO_P BIT
AS
UPDATE Pacientes SET Nombre_P = @NOMBRE_P, Apellido_P = @APELLIDO_P, Sexo_P = @SEXO_P, Nacionalidad_P = @NACIONALIDAD_P, FechaNacimiento_P = @FECHANAC_P, Direccion_P = @DIRECCION_P,
IdLocalidad_Paciente = @LOCALIDAD_P, IdProvincia_Paciente = @PROVINCIA_P, Email_P = @EMAIL_P, Telefono_P = @TELEFONO_P, Estado_P = @ESTADO_P WHERE DniPaciente_P = @DNI_P
GO
*/