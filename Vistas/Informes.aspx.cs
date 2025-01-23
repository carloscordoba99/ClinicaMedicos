using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;
using System.Globalization;
using System.Data.SqlClient;

namespace Vistas
{
    public partial class Informes : System.Web.UI.Page
    {
        NegocioEspecialidad negEspe = new NegocioEspecialidad();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                CargarEspecialidades();
                CargarPacientes();
                CargarAtendidosHoy();
                
            }
          
            
        }


        private void CargarEspecialidades()
        {
            DataTable dtEspecialidad = negEspe.GetTabla();
            ddlEspecialidades.DataSource = dtEspecialidad;
            ddlEspecialidades.DataTextField = "Descripcion_E";
            ddlEspecialidades.DataValueField = "IdEspecialidad_E";
            ddlEspecialidades.DataBind();
            ddlEspecialidades.Items.Insert(0,new ListItem("--Seleccione una especialidad--", "0"));
        }

     

        protected void ddlEspecialidades_SelectedIndexChanged(object sender, EventArgs e)
        {
            NegocioMedico obj = new NegocioMedico();
            int especialidad = Convert.ToInt32(ddlEspecialidades.SelectedValue);
            grdMedicos.DataSource = obj.FilasMedicoEspecialidad(obj.crearTabla(),especialidad);
            grdMedicos.DataBind();
        }

        protected void btnMedicoXLegajo_Click(object sender, EventArgs e)
        {
            if (txtTurnosMes.Text.Trim().Length != 0)
            {
                NegocioTurnosADM obj = new NegocioTurnosADM();
                int legajo = Convert.ToInt32(txtTurnosMes.Text.Trim());
                grdTurnoMedico.DataSource = obj.filtrarTurnos(legajo);
                grdTurnoMedico.DataBind();
                txtTurnosMes.Text = "";
                if (Convert.ToInt32(grdTurnoMedico.Rows.Count) <= 0)
                {
                    lblError.Visible = true;
                    lblError.Text = "El Legajo que intenta buscar no se encuentra en la base de datos.";
                }
                else
                {
                    lblError.Visible = false;
                }

            }
            else {
                lblError.Visible = true;
                lblError.Text = "Carga incorrecta.";
            }
        }

        public void CargarPacientes()
        {
            DataTable dt = new DataTable();
            NegocioPaciente obj = new NegocioPaciente();
            dt.Columns.Add("Promedio Edad Mujeres");
            dt.Columns.Add("Promedio Edad Hombres");

            DataRow dr = dt.NewRow();
            dr["Promedio Edad Mujeres"] = obj.CalcularPromedioEdadPacientes("F");
            dr["Promedio Edad Hombres"] = obj.CalcularPromedioEdadPacientes("M");
            dt.Rows.Add(dr);


            grdPEG.DataSource = dt;
            grdPEG.DataBind();

        }
 
        public void CargarAtendidosHoy()
        {
            NegocioTurnosADM obj = new NegocioTurnosADM();
            DateTime fecha = DateTime.Today;
            DataTable table = obj.filtrarPorFechaExacta(fecha);

            int cantHoy = table.AsEnumerable()
                          .Count(row => row.Field<bool>("Presente_T") == true);
                lblHoyTurnos.Text = Convert.ToString(cantHoy);
            

        }

        protected void ddlMeses_SelectedIndexChanged(object sender, EventArgs e)
        {
            NegocioTurnosADM obj = new NegocioTurnosADM();
            int mes = Convert.ToInt32(ddlMeses.SelectedValue);
            int presentes = obj.ContarEstadoTurnos(true, mes);
            int ausentes = obj.ContarEstadoTurnos(false, mes);
            DataTable dt = new DataTable();

            dt.Columns.Add("Turnos Presentes");
            dt.Columns.Add("Turnos Ausentes");

            DataRow dr = dt.NewRow();
            dr["Turnos Presentes"] = presentes;
            dr["Turnos Ausentes"] = ausentes;
            dt.Rows.Add(dr);

            grdPresenAusen.DataSource = dt;
            grdPresenAusen.DataBind();
        }
    }
}