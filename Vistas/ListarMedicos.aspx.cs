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
    public partial class WebForm1 : System.Web.UI.Page
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

            grdMedicos.DataSource = obj.FilasMedicosFiltro(obj.crearTabla(), Convert.ToString(txtMedico.Text.Trim()));
            grdMedicos.DataBind();

            if(Convert.ToInt32(grdMedicos.Rows.Count) <= 0)
            {
                lblError.Visible = true;
                lblError.Text = "El nombre que intenta buscar no se encuentra en la base de datos.";
            }
            else
            {
                lblError.Visible = false;
            }
            txtMedico.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            cargarGridViewMedicos();
            txtMedico.Text = "";
        }

        protected void grdMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdMedicos.PageIndex = e.NewPageIndex;
            cargarGridViewMedicos();
        }
    }
}