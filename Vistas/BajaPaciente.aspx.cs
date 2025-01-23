using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class BajaPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                cargarGridViewPacientes();
            }
        }

        private void cargarGridViewPacientes()
        {
            NegocioPaciente obj = new NegocioPaciente();

            grdPacientes.DataSource = obj.obtenerTodos();
            grdPacientes.DataBind();
        }

        protected void btnEliminar_Click1(object sender, EventArgs e)
        {
            EliminarPaciente.Visible = true;
            EliminarPaciente.Text = "Esta seguro que desea realizar esta acción?";
            btnConfirmar.Visible = true;
            btnCancelar.Visible = true;
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            NegocioPaciente np = new NegocioPaciente();
            bool exito = false;
            exito = np.bajaPacienteNegocio(Convert.ToInt32(txtBajaPaciente.Text.Trim()));
            if (exito == true)
            {
                lblExito.Text = "El paciente fue dado de baja exitosamente.";
                lblExito.Visible = true;
                txtBajaPaciente.Text = "";
                cargarGridViewPacientes();
                LimpiarCamposConfirmacion();
            }
            else
            {
                lblExito.Text = "El paciente no ha podido darse de baja, o ya fue dado de baja previamente.";
                lblExito.Visible = true;
                txtBajaPaciente.Text = "";
                cargarGridViewPacientes();
                LimpiarCamposConfirmacion();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            cargarGridViewPacientes();
            LimpiarCamposConfirmacion();
        }

        void LimpiarCamposConfirmacion() {
            EliminarPaciente.Visible = false;
            EliminarPaciente.Text = "";
            btnConfirmar.Visible = false;
            btnCancelar.Visible = false;
        }

        protected void grdPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPacientes.PageIndex = e.NewPageIndex;
            cargarGridViewPacientes();
        }
    }
}