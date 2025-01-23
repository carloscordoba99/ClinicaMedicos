using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas
{
    public partial class TurnosMed : System.Web.UI.Page
    {
        NegocioTurnosADM negTurnos = new NegocioTurnosADM();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            cargarTurnos();
            if (!IsPostBack)
            {
                cargarIDs();
            }
        }
        protected void cargarTurnos()
        {
            NegocioMedico obj = new NegocioMedico();
            NegocioTurnosADM negturn = new NegocioTurnosADM();
            DataTable Tablamedicos = obj.filtrarMedicoXUsuario(Session["NombreUsuario"].ToString());
            if (Tablamedicos.Rows.Count > 0)
            {
                DataRow row = Tablamedicos.Rows[0];
                int legajo = Convert.ToInt32(row["Legajo_M"]);
                grdTurnos.DataSource = negturn.filtrarTurnos(legajo);
                grdTurnos.DataBind();
            }
            else
            {
                lblError.Visible = true;
            }

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        private void cargarIDs()
        {
            DataTable dtTurnos = negTurnos.getTurnos();
            ddlTurnos.DataSource = dtTurnos;
            ddlTurnos.DataTextField = "IdTurno_T";
            ddlTurnos.DataValueField = "IdTurno_T";
            ddlTurnos.DataBind();

            ddlTurnos.Items.Insert(0, new ListItem("--Seleccione un Turno--", "0"));
        }

        protected void btnFiltrar_Click1(object sender, EventArgs e)
        {
            NegocioTurnosADM negTurn = new NegocioTurnosADM();
            NegocioMedico obj = new NegocioMedico();
            DataTable Tablamedicos = obj.filtrarMedicoXUsuario(Session["NombreUsuario"].ToString());
            if (Tablamedicos.Rows.Count > 0)
            {
                DataRow row = Tablamedicos.Rows[0];
                int legajo = Convert.ToInt32(row["Legajo_M"]);
                DataTable FiltroMedicos = negTurn.filtrarPorId(txtTurno.Text);
                DataRow rowMed = FiltroMedicos.Rows[0];
                if (legajo == Convert.ToInt32(rowMed["Legajo_T"]))
                {

                    grdTurnos.DataSource = negTurn.filtrarPorId(txtTurno.Text);
                    grdTurnos.DataBind();
                    lblError.Visible = false;
                }
                else
                {
                    lblError.Visible = true;
                    grdTurnos.DataSource = null;
                    grdTurnos.DataBind();
                }
                txtTurno.Text = "";
            }

        }

        protected void btnTodo_Click1(object sender, EventArgs e)
        {
            cargarTurnos();
            txtTurno.Text = "";
        }

        protected void grdTurnos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdTurnos.PageIndex = e.NewPageIndex;
            cargarTurnos();
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int idTurno = Convert.ToInt32(ddlTurnos.SelectedIndex);
            string observacion = txtObservacion.Text;
            int exito = negTurnos.ModificarTurno(idTurno, observacion);
            if (exito == 1)
            {
                lblExito.Text = "El turno fue modificado exitosamente.";
                lblExito.Visible = true;
                txtObservacion.Text = "";
            }
            else
            {
                lblExito.Text = "El turno no ha podido ser modificado.";
                lblExito.Visible = true;
                txtObservacion.Text = "";
            }

            cargarTurnos();
        }
    }
}