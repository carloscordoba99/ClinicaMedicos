using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using System.Data;
using Entidades;
using System.Data.SqlClient;

namespace Negocio
{
    public class NegocioTurnosADM
    {
        DaoEspecialidad daoEsp = new DaoEspecialidad();
        DaoMedicos daoMed = new DaoMedicos();
        DaoTurnos daoTurnos = new DaoTurnos();
        Medico med = new Medico();
        Turnos turno = new Turnos();

        public DataTable getEspecialidadesNEG()
        {
            DataTable dt = new DataTable();
            dt=daoEsp.getTablaEspecialidades();
            return dt;
        }

        public DataTable getMedicosNEG(int idEspecialidad)
        {
            DataTable dt = new DataTable();
            dt = daoMed.getMedicoEspecialidad(idEspecialidad);
            return dt;
        }

        //Función para recuperar el id de los dias que trabaja un medico
        public int getDiasMedico(string legajomed)
        {
            //Separo el nombre completo en nombre y apellido    get medico (string).
            /*select medico where "s  s"*/
            /*var nombreCompleto= nombreMedico.Split(' ');*/

            /*string nombre = nombreCompleto[0];
            string apellido = nombreCompleto[1];*/
             
            DataTable dt = daoMed.getTablaMedicosFiltradaExacta(legajomed);

            if (dt.Rows.Count > 0)
            {
                DataRow row = dt.Rows[0];
                int legajo = Convert.ToInt32(row["Legajo_M"]);
            }
            int idDias = Convert.ToInt32(med.getIdDia());
            return idDias;
        }

        public DataTable getHorarios(string medico, DateTime fecha)
        {
            var nombreCompleto = medico.Split(' ');
            string nombre = nombreCompleto[0];
            string apellido = nombreCompleto[1];

            med.setNombreCompleto(medico);
            med.setNombre(nombre);
            med.setApellido(apellido);
            med = daoMed.getMedicoPorNombre(med);

            turno.setLegajoMedico(med.getLegajo());
            turno.setFechaTurno(fecha);

            DataTable tabla = daoTurnos.getTurno(turno, med.getIdHorario());
            return tabla;
        }

        public int agregarTurno(Turnos turno)
        {
            int devuelve = daoTurnos.agregarTurno(turno);
            return devuelve;
        }

        public int contarRegistros()
        {
            int cantRegistros = daoTurnos.contarRegistros();
            return cantRegistros;
        }

        public int getLegajoMedico(string nombreCompleto)
        {
            string nombre = nombreCompleto.Split(' ')[0];
            string apellido = nombreCompleto.Split(' ')[1];
            med.setNombreCompleto(nombreCompleto);
            med.setNombre(nombre);
            med.setApellido(apellido);
            med = daoMed.getMedicoPorNombre(med);
            int legajo = med.getLegajo();
            return legajo;
        }
        public DataTable getTurnos()
        {
            DaoTurnos obj = new DaoTurnos();
            return obj.getTablaTurnos();
        }
        // filtro de los turnos
        public DataTable filtrarTurnos(int legajo)
        {
            DaoTurnos daoTurn = new DaoTurnos();
            DataTable tabla = daoTurn.getTurnosXMedicos(legajo);
            return tabla;
        }
        public DataTable filtrarPorId(string id)
        {
            DataTable dt = new DataTable();
            dt = daoTurnos.getTurnoPorId(id);
            return dt;
        }
        public DataTable filtrarPorFechaExacta(DateTime fecha)
        {
            DataTable dt = new DataTable();
            dt = daoTurnos.getTurnoXFecha(fecha);
            return dt;
        }
        public DataTable filtrarTurnoxMes(int mes)
        {   
            DataTable dt = new DataTable();
            dt = daoTurnos.getTurnosXMes(mes);
            return dt;
        }
        public int ContarEstadoTurnos(bool valor,int mes)
        {
            NegocioTurnosADM obj = new NegocioTurnosADM();
            DataTable dt = obj.filtrarTurnoxMes(mes);
            int contar = dt.AsEnumerable()
                         .Count(row => row.Field<bool>("Presente_T") == valor);
            return contar;

        }

        public int ModificarTurno(int idTurno, string observacion)
        {
            int devuelve = daoTurnos.modificarTurno(idTurno, observacion);
            return devuelve;
        }
    }
}
