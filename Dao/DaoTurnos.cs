using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;
using System.Net;

namespace Dao
{
    public class DaoTurnos
    {
        AccesoDatos ds = new AccesoDatos();
        string tablaTurnos = "turnos";
        string tablaHorarios = "Horarios";
        public DataTable getTablaTurnos()
        {
            string consulta = "Select * from turnos";
            DataTable tabla = ds.ObtenerTabla(tablaTurnos, consulta);
            return tabla;
        }

        public DataTable getTurno(Turnos turno, int idHorarioMedico)
        {
            int legajoMedico = turno.getLegajoMedico();
            DateTime fecha = turno.getFechaTurno().Date;
            string fechaUniversal = fecha.ToString("yyyy-MM-dd");
            string consulta = "Select * from turnos WHERE Legajo_T='" + legajoMedico + "'AND Fecha_T ='" + fechaUniversal + "'";
            DataTable tabla = ds.ObtenerTabla(tablaTurnos, consulta);
            if (tabla.Rows.Count == 0)
            {
                if(idHorarioMedico == 814)
                {
                    consulta = "Select * from Horarios WHERE IdHorario_H <= 6";
                    tabla = ds.ObtenerTabla(tablaHorarios, consulta);
                    return tabla;
                }
                else
                {
                    consulta = "Select * from Horarios WHERE IdHorario_H > 6";
                    tabla = ds.ObtenerTabla(tablaHorarios, consulta);
                    return tabla;
                }
            }
            else
            {
                List<int> listaHorariosOcupados = new List<int>();
                foreach(DataRow fila in tabla.Rows)
                {
                    int idHorario = Convert.ToInt32(fila["IdHorario_T"]);
                    listaHorariosOcupados.Add(idHorario);
                }
                consulta = "SELECT * FROM Horarios WHERE IdHorario_H NOT IN (" + string.Join(",", listaHorariosOcupados) + ")";
                tabla = ds.ObtenerTabla(tablaHorarios, consulta);
                return tabla;
            }
        }
        public DataTable getTurnoPorId(string id)
        {
            string consulta = "SELECT * FROM turnos WHERE IdTurno_T = " + id;
            DataTable tabla = ds.ObtenerTabla(tablaTurnos, consulta);
            return tabla;
        }
        public int contarRegistros()
        {
            string consulta = "SELECT * FROM turnos";
            DataTable dt = ds.ObtenerTabla("turnos", consulta);
            int cantRegistros = dt.Rows.Count;
            return cantRegistros;
        }

        public int agregarTurno(Turnos turno)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarTurno(ref comando, turno);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spAgregarTurno");
        }
          // get turno por el legajo del medico
        public DataTable getTurnosXMedicos(int legajo)
        {
            string consulta = "Select IdTurno_T AS [ID Turno], Legajo_T AS [Legajo Medico],DniPaciente_T AS [Dni Paciente], Descripcion_E AS [Especialidad], Descripcion_D AS [Dia],Descripcion_H AS [Horario],Presente_T AS [Presente],Observacion_T AS [Observacion],Fecha_T AS [FechaTurno] from (((turnos INNER JOIN Especialidades on IdEspecialidad_T = IdEspecialidad_E) INNER JOIN Dias ON IdDia_D = IdDia_T) INNER JOIN Horarios on IdHorario_H = IdHorario_T) WHERE Legajo_T='" + legajo + "'";
            /*"Select * from turnos WHERE WHERE Legajo_T='" + legajo + "'";*/
            DataTable tabla = ds.ObtenerTabla(tablaTurnos, consulta);
            return tabla;
        }
        public DataTable getTurnoXFecha(DateTime Fecha)
        {
            string fechaSQL = Fecha.ToString("yyyy-MM-dd");
            string consulta = "Select * from turnos WHERE Fecha_T='" + fechaSQL + "'";
            DataTable tabla = ds.ObtenerTabla(tablaTurnos, consulta);
            return tabla;
        }
        public DataTable getTurnosXMes(int mes)
        {

            string consulta = "SELECT * FROM turnos WHERE MONTH(Fecha_T) = '" + mes + "'";
            DataTable tabla = ds.ObtenerTabla(tablaTurnos, consulta);
            return tabla;
        }
        private void ArmarParametrosAgregarTurno(ref SqlCommand Comando, Turnos turno)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IDTURNO_T", SqlDbType.Int);
            SqlParametros.Value = turno.getIdTurno();
            SqlParametros = Comando.Parameters.Add("@LEGAJO_T", SqlDbType.Int);
            SqlParametros.Value = turno.getLegajoMedico();
            SqlParametros = Comando.Parameters.Add("@DNIPACIENTE_T", SqlDbType.Int);
            SqlParametros.Value = turno.getDniPaciente();
            SqlParametros = Comando.Parameters.Add("@IDESPECIALIDAD_T", SqlDbType.Int);
            SqlParametros.Value = turno.getIdEspecialidad();
            SqlParametros = Comando.Parameters.Add("@IDDIA_T", SqlDbType.Int);
            SqlParametros.Value = turno.getIdDia();
            SqlParametros = Comando.Parameters.Add("@IDHORARIO_T", SqlDbType.Int);
            SqlParametros.Value = turno.getIdHorario();
            SqlParametros = Comando.Parameters.Add("@PRESENTE_T", SqlDbType.Bit);
            SqlParametros.Value = turno.getPresente();
            SqlParametros = Comando.Parameters.Add("@OBSERVACION_T", SqlDbType.VarChar);
            SqlParametros.Value = turno.getObservacion();
            SqlParametros = Comando.Parameters.Add("@FECHA_T", SqlDbType.DateTime);
            SqlParametros.Value = turno.getFechaTurno();
        }

        public int modificarTurno(int idTurno, string observacion)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosModificarTurno(ref comando, idTurno, observacion);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spModificarTurno");
        }

        private void ArmarParametrosModificarTurno(ref SqlCommand comando, int idTurno, string observacion)
        {
            SqlParameter objSql = new SqlParameter();
            objSql = comando.Parameters.Add("@IdTurno_T", SqlDbType.Int);
            objSql.Value = idTurno;
            objSql = comando.Parameters.Add("@Observacion_T", SqlDbType.VarChar);
            objSql.Value = observacion;
        }
    }
}
