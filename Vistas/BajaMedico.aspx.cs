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

namespace Vistas
{
    public partial class BajaMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                cargarGridViewMedicos();
            }
        }

        private void cargarGridViewMedicos()
        {
            NegocioMedico obj = new NegocioMedico();

            grdMedicos.DataSource = obj.FilasMedicos(obj.crearTabla());
            grdMedicos.DataBind();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            NegocioMedico obj = new NegocioMedico();

            grdMedicos.DataSource = obj.FilasMedicosFiltroExacta(obj.crearTabla(), Convert.ToString(txtLegajoMedico.Text.Trim()));
            grdMedicos.DataBind();

            if (Convert.ToInt32(grdMedicos.Rows.Count) <= 0)
            {
                lblExito.Visible = true;
                lblExito.Text = "El legajo que intenta buscar no se encuentra en la base de datos.";
            }
            else
            {
                lblExito.Visible = false;
            }
            txtLegajoMedico.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblExito.Visible = false;
            cargarGridViewMedicos();
            txtLegajoMedico.Text = "";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            EliminarMedico.Visible = true;
            EliminarMedico.Text = "Esta seguro que desea realizar esta acción?";
            btnConfirmar.Visible = true;
            btnCancelar.Visible = true;
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            cargarGridViewMedicos();
            LimpiarCamposConfirmacion();
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            NegocioMedico obj = new NegocioMedico();
            bool exito = false;
            exito = obj.bajaMedicoNegocio(Convert.ToInt32(txtLegajoMedico.Text.Trim()));
            if (exito == true)
            {
                lblExito.Text = "El medico fue dado de baja exitosamente.";
                lblExito.Visible = true;
                txtLegajoMedico.Text = "";
                cargarGridViewMedicos();
                LimpiarCamposConfirmacion() ;
            }
            else
            {
                lblExito.Text = "El médico no ha podido darse de baja, o ya fue dado de baja previamente.";
                lblExito.Visible = true;
                txtLegajoMedico.Text = "";
                cargarGridViewMedicos();
                LimpiarCamposConfirmacion() ;
            }
        }
        void LimpiarCamposConfirmacion()
        {
            EliminarMedico.Visible = false;
            EliminarMedico.Text = "";
            btnConfirmar.Visible = false;
            btnCancelar.Visible = false;
        }

        protected void grdMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdMedicos.PageIndex = e.NewPageIndex;
            cargarGridViewMedicos();
        }
    }
}