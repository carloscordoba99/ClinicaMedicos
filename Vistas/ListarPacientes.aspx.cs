using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            lblError.Text = "";
            if (!IsPostBack)
            {
                cargarGridViewPacientes();
                cargarFiltros();
            }
        }

        private void cargarGridViewPacientes()
        {
            NegocioPaciente obj = new NegocioPaciente();

            grdPacientes.DataSource = obj.obtenerTodos();
            grdPacientes.DataBind();
        }

        private void cargarFiltros()
        {
            NegocioPaciente obj = new NegocioPaciente();
            ddlFiltros.Items.Insert(0, new ListItem("Buscar por...", "0"));
            ddlFiltros.Items.Insert(1, new ListItem("DNI", "DniPaciente_P"));
            ddlFiltros.Items.Insert(2, new ListItem("Nombre", "Nombre_P"));
            ddlFiltros.Items.Insert(3, new ListItem("Nacionalidad", "Descripcion_Nacionalidad"));
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            NegocioPaciente obj = new NegocioPaciente();
            if (txtboxBusqueda.Text.Trim().Length != 0)
            {
                if (ddlFiltros.SelectedValue != "0")
                {
                    string filtroElegido = ddlFiltros.SelectedValue;
                    string busqueda = txtboxBusqueda.Text.Trim();

                    grdPacientes.DataSource = obj.obtenerPacientes(filtroElegido, busqueda);
                    grdPacientes.DataBind();
                }
                else
                {
                    grdPacientes.DataSource = obj.obtenerPacientesExacto(txtboxBusqueda.Text.Trim());
                    grdPacientes.DataBind();
                }
                if (Convert.ToInt32(grdPacientes.Rows.Count) <= 0)
                {
                    lblError.Visible = true;
                    lblError.Text = "El DNI que intenta buscar no se encuentra en la base de datos.";
                }
                else
                {
                    lblError.Visible = false;
                }
                txtboxBusqueda.Text = "";
            }
        }
        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblError.Visible = false;
            cargarGridViewPacientes();
            txtboxBusqueda.Text = "";
        }

        protected void grdPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPacientes.PageIndex = e.NewPageIndex;
            cargarGridViewPacientes();
        }
    }
}