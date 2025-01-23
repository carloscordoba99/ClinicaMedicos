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
    public partial class ModificarMedico : System.Web.UI.Page
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
                lblEstado.Visible = true;
                lblEstado.Text = "El legajo que intenta buscar no se encuentra en la base de datos.";
            }
            else
            {
                lblEstado.Visible = false;
            }
            txtLegajoMedico.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblEstado.Visible = false;
            cargarGridViewMedicos();
            txtLegajoMedico.Text = "";
        }

        protected void grdMedicos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdMedicos.EditIndex = e.NewEditIndex;
            cargarGridViewMedicos();
        }

        protected void grdMedicos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdMedicos.EditIndex = -1;
            cargarGridViewMedicos();
        }

        protected void grdMedicos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            NegocioMedico obj = new NegocioMedico();

            int legajo = Convert.ToInt32(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblLegajo")).Text);
            string IdProvincia = obj.obtenerProvinciaIDnegocio(Convert.ToString(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblProvincia")).Text));
            string IdLocalidad = obj.obtenerLocalidadIDnegocio(Convert.ToString(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblLocalidad")).Text));
            int IdEspecialidad = obj.obtenerEspecialidadIDnegocio(Convert.ToString(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblEspecialidad")).Text));
            string usuario = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtNombreUsuario")).Text);
            string pass = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtPass")).Text);
            string dni = Convert.ToString(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblDNI")).Text);
            string nombre = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtNombre")).Text);
            string apellido = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtApellido")).Text);
            string sexo = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtSexo")).Text);
            string nacionalidad = obj.obtenerIdNacionalidadNegocio(Convert.ToString(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblNacionalidad")).Text));
            DateTime fechaNacimiento = Convert.ToDateTime(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtFechaNacimiento")).Text);
            string direccion = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtDireccion")).Text);
            string email = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtEmail")).Text);
            string telefono = Convert.ToString(((TextBox)grdMedicos.Rows[e.RowIndex].FindControl("txtTelefono")).Text);
            string IdDia = obj.obtenerIdDiasNegocio(Convert.ToString(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblDiaID")).Text));
            int IdHorario = Convert.ToInt32(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblHorarioID")).Text);
            bool estado = Convert.ToBoolean(((Label)grdMedicos.Rows[e.RowIndex].FindControl("lblEstado0")).Text);
            string usuarioBusqueda = obj.obtenerUsuarioPreModificarNegocio(legajo);
            string passBusqueda = obj.obtenerPassPreModificarNegocio(legajo);

            bool exito = false;
            if (string.Compare(usuario, usuarioBusqueda) == 0 && string.Compare(pass, passBusqueda) == 0)
            {
                exito = obj.modificarMedicoNegocio(legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuario, pass, dni, nombre,
                apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado);
            }
            else
            {
                obj.modificarMedicoUsuarioNegocio(legajo, IdProvincia, IdLocalidad, IdEspecialidad, usuario, pass, dni, nombre,
                apellido, sexo, nacionalidad, fechaNacimiento, direccion, email, telefono, IdDia, IdHorario, estado, usuarioBusqueda);
                exito = true;
            }

            if (exito == true)
            {
                lblEstado.Text = "El médico fue modificado exitosamente.";
                lblEstado.Visible = true;
                txtLegajoMedico.Text = "";
            }
            else
            {
                lblEstado.Text = "El médico no ha podido ser modificado.";
                lblEstado.Visible = true;
                txtLegajoMedico.Text = "";
            }

            grdMedicos.EditIndex = -1;
            cargarGridViewMedicos();
        }

        protected void grdMedicos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdMedicos.PageIndex = e.NewPageIndex;
            cargarGridViewMedicos();
        }
    }
}