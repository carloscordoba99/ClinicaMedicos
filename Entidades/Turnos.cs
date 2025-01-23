using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Turnos
    {
        private int idTurno,legajoMedico,dniPaciente,idEspecialidad,idDia,idHorario;
        private string observacion;
        private DateTime fechaTurno;
        private bool presente;

        public int getIdTurno()
        {
            return idTurno;
        }
        public void setIdTurno(int idTurno)
        {
            this.idTurno = idTurno;
        }

        public int getLegajoMedico()
        {
            return legajoMedico;
        }
        public void setLegajoMedico(int legajoMedico)
        {
            this.legajoMedico = legajoMedico;
        }

        public int getDniPaciente()
        {
            return dniPaciente;
        }
        public void setDniPaciente(int dniPaciente)
        {
            this.dniPaciente = dniPaciente;
        }

        public int getIdEspecialidad()
        {
            return idEspecialidad;
        }
        public void setIdEspecialidad(int idEspecialidad)
        {
            this.idEspecialidad = idEspecialidad;
        }
        
        public int getIdDia()
        {
            return idDia;
        }
        public void setIdDia(int idDia)
        {
            this.idDia = idDia;
        }

        public int getIdHorario()
        {
            return idHorario;
        }
        public void setIdHorario(int idHorario)
        {
            this.idHorario = idHorario;
        }

        public string getObservacion()
        {
            return observacion;
        }
        public void setObservacion(string observacion)
        {
            this.observacion = observacion;
        }

        public DateTime getFechaTurno()
        {
            return fechaTurno;
        }
        public void setFechaTurno(DateTime fechaTurno)
        {
            this.fechaTurno = fechaTurno;
        }

        public bool getPresente()
        {
            return presente;
        }
        public void setPresente(bool presente)
        {
            this.presente = presente;
        }
    }
}
