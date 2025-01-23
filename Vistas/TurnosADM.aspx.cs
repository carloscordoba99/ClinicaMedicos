using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;

namespace Vistas
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioTurnosADM neg = new NegocioTurnosADM();
        NegocioPaciente negPaciente = new NegocioPaciente();
        NegocioMedico negmed = new NegocioMedico();
        Turnos turno = new Turnos();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                cargarEspecialidades();
                cargarHorarios();
                cargarPacientes();
            }
        }
        private void cargarEspecialidades()
        {
            DataTable dtEspecialidad = neg.getEspecialidadesNEG();
            ddlEspecialidad.DataSource = dtEspecialidad;
            ddlEspecialidad.DataTextField = "Descripcion_E";
            ddlEspecialidad.DataValueField = "IdEspecialidad_E";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Insert(0,new ListItem("--Seleccione una especialidad--", "0"));
            ddlMedico.Items.Add(new ListItem("--Seleccione una especialidad--", "0"));
            ddlEspecialidad.SelectedValue = "0";
        }

        private void cargarMedicos()
        {
            int idEspecialidad = Convert.ToInt32(ddlEspecialidad.SelectedValue);
            DataTable dtMedicos = neg.getMedicosNEG(idEspecialidad);
            //Agrega una columna que contiene el Nombre Completo del médico
            dtMedicos.Columns.Add("NombreCompleto", typeof(string), "Nombre_M + ' ' + Apellido_M");
            ddlMedico.DataSource = dtMedicos;
            ddlMedico.DataTextField = "NombreCompleto";
            ddlMedico.DataValueField = "Legajo_M";
            ddlMedico.DataBind();
            ddlMedico.Items.Insert(0,new ListItem("--Seleccione un medico--", "0"));
            ddlMedico.SelectedValue = "0";
        }


        protected void ddlEspecialidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlEspecialidad.SelectedValue != "0")
            {
                cargarMedicos();
            }
            if(ddlEspecialidad.SelectedValue == "0")
            {
                ddlMedico.Items.Clear();
                ddlMedico.Items.Insert(0, new ListItem("--Seleccione una especialidad--", "0"));
            }
        }

        protected void calendarioTurnos_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = calendarioTurnos.SelectedDate.Date.ToShortDateString();
            cargarHorarios();
        }

        protected void calendarioTurnos_DayRender(object sender, DayRenderEventArgs e)
        {
            //Entra al if si se eligió a algun medico del drop down list
            if (Convert.ToInt32(ddlMedico.SelectedValue) != 0)
            {
                if (e.Day.Date < DateTime.Today)
                {
                    e.Day.IsSelectable = false;
                    e.Cell.ForeColor = System.Drawing.Color.Gray;
                    return;
                }
                string legajo = ddlMedico.SelectedValue.ToString();

                int idDias = negmed.getDiaxMedico(legajo);
                if (idDias == 0) {
                    lblchau.Text = "ERROR.";
                    e.Day.IsSelectable = false;
                    e.Cell.ForeColor = System.Drawing.Color.Gray;
                    return;
                }
                if (idDias == 1)
                {

                    //Si el id=1 entonces solo puede elegir Lunes, Martes o Miercoles
                    if (e.Day.Date.DayOfWeek != DayOfWeek.Monday && e.Day.Date.DayOfWeek != DayOfWeek.Tuesday && e.Day.Date.DayOfWeek != DayOfWeek.Wednesday)
                    {
                        //Si el dia no es correcto no se puede seleccionar y además se pone la casilla en gris
                        e.Day.IsSelectable = false;
                        e.Cell.ForeColor = System.Drawing.Color.Gray;
                        
                    }
                }

                else 
                {
                    //Hace lo mismo si el id=2
                    if (e.Day.Date.DayOfWeek != DayOfWeek.Thursday && e.Day.Date.DayOfWeek != DayOfWeek.Friday && e.Day.Date.DayOfWeek != DayOfWeek.Saturday)
                    {
                        e.Day.IsSelectable = false;
                        e.Cell.ForeColor = System.Drawing.Color.Gray;
                    }
                }
            }
            else
            {
                lblErrorCalendario.Text = "Debe elegir un medico";
                lblErrorCalendario.Visible = true;
            }
        }

        protected void cargarHorarios()
        {
            ddlHorario.Items.Insert(0, new ListItem("--Seleccione un horario--", "0"));
            if (ddlMedico.SelectedValue != "0")
            {
                string nombreMedico = ddlMedico.SelectedItem.Text;
                DateTime fechaTurno = calendarioTurnos.SelectedDate;

                DataTable dtHorarios = neg.getHorarios(nombreMedico, fechaTurno);
                ddlHorario.DataSource = dtHorarios;
                ddlHorario.DataTextField = "Descripcion_H";
                ddlHorario.DataValueField = "IdHorario_H";
                ddlHorario.DataBind();
                ddlHorario.Items.Insert(0,new ListItem("--Seleccione un horario--","0"));
            }
        }

        public void cargarPacientes()
        {
            DataTable dtPacientes = negPaciente.obtenerTodos();
            dtPacientes.Columns.Add("NombreCompleto", typeof(string), "Nombre_P + ' ' + Apellido_P");
            ddlPaciente.DataSource = dtPacientes;
            ddlPaciente.DataTextField = "NombreCompleto";
            ddlPaciente.DataValueField = "DniPaciente_P";
            ddlPaciente.DataBind();
            ddlPaciente.Items.Insert(0, new ListItem("--Seleccione un paciente--"));
        }

        protected void ddlMedico_SelectedIndexChanged(object sender, EventArgs e)
        {
            calendarioTurnos.DataBind();
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            turno.setIdTurno(neg.contarRegistros()+1);
            turno.setLegajoMedico(Convert.ToInt32(ddlMedico.SelectedValue));
            turno.setDniPaciente(Convert.ToInt32(ddlPaciente.SelectedValue));
            turno.setIdEspecialidad(Convert.ToInt32(ddlEspecialidad.SelectedValue));
            int idDia = getDiaSemana(calendarioTurnos.SelectedDate.DayOfWeek);
            turno.setIdDia(idDia);
            turno.setIdHorario(Convert.ToInt32(ddlHorario.SelectedValue));
            turno.setPresente(false);
            turno.setObservacion("");
            turno.setFechaTurno(calendarioTurnos.SelectedDate.Date);
            if (neg.agregarTurno(turno) == 1)
            {
                lblTurnoAsignado.Text = "El turno se ha asignado con éxito.";
                Limpiarcampos();
            }
            else
            {
                lblTurnoAsignado.Text = "El turno no se ha podido ingresar.";
                Limpiarcampos();
            }
        }

        public int getDiaSemana(DayOfWeek diaSeleccionado)
        {
            switch (diaSeleccionado)
            {
                case DayOfWeek.Monday:
                    return 1;
                case DayOfWeek.Tuesday:
                    return 1;
                case DayOfWeek.Wednesday:
                    return 1;
                case DayOfWeek.Thursday:
                    return 2;
                case DayOfWeek.Friday:
                    return 2;
                case DayOfWeek.Saturday:
                    return 2;
                case DayOfWeek.Sunday:
                    return 2;
                default:
                    return 0;
            }
        }
        void Limpiarcampos() {
            cargarEspecialidades();
            cargarHorarios();
            cargarPacientes();
            TextBox1.Text = "";
        }

    }
}