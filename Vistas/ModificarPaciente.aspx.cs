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
    public partial class ModificarPaciente : System.Web.UI.Page
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

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            NegocioPaciente obj = new NegocioPaciente();
            grdPacientes.DataSource = obj.obtenerPacientesExacto(txtDniPaciente.Text.Trim());
            grdPacientes.DataBind();
            if (Convert.ToInt32(grdPacientes.Rows.Count) <= 0)
            {
                lblExito.Visible = true;
                lblExito.Text = "El DNI que intenta buscar no se encuentra en la base de datos.";
            }
            else
            {
                lblExito.Visible = false;
            }
            txtDniPaciente.Text = "";
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            lblExito.Visible = false;
            cargarGridViewPacientes();
            txtDniPaciente.Text = "";
        }

        protected void grdPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdPacientes.EditIndex = e.NewEditIndex;
            cargarGridViewPacientes();
        }

        protected void grdPacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdPacientes.EditIndex = -1;
            cargarGridViewPacientes();
        }

        protected void grdPacientes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Pacientes obj = new Pacientes();
            NegocioPaciente obj2 = new NegocioPaciente();

            obj.setdni(Convert.ToInt32(((Label)grdPacientes.Rows[e.RowIndex].FindControl("lbl_Dni")).Text));
            obj.setprovincia(obj2.obtenerProvinciaIDnegocio(Convert.ToString(((Label)grdPacientes.Rows[e.RowIndex].FindControl("lbl_IdProvincia")).Text)));
            obj.setlocalidad(obj2.obtenerLocalidadIDnegocio(Convert.ToString(((Label)grdPacientes.Rows[e.RowIndex].FindControl("lbl_IdLocalidad")).Text)));
            obj.setnombre(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtNombre")).Text);
            obj.setapellido(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtApellido")).Text);
            obj.setsexo(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtSexo")).Text);
            obj.setnacionalidad(obj2.obtenerNacionalidadIDnegocio(Convert.ToString(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtNacionalidad")).Text)));
            obj.setfechaNac(Convert.ToDateTime(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtFechaNacimiento")).Text));
            obj.setdireccion(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtDireccion")).Text);
            obj.setmail(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtEmail")).Text);
            obj.settelefono(((TextBox)grdPacientes.Rows[e.RowIndex].FindControl("txtTelefono")).Text);
            obj.setestado(Convert.ToBoolean(((Label)grdPacientes.Rows[e.RowIndex].FindControl("lbl_Estado")).Text));

            bool exito = obj2.ModificarPaciente(obj);
            if (exito == true)
            {
                lblExito.Text = "El paciente fue modificado exitosamente.";
                lblExito.Visible = true;
                txtDniPaciente.Text = "";
            }
            else
            {
                lblExito.Text = "El paciente no ha podido ser modificado.";
                lblExito.Visible = true;
                txtDniPaciente.Text = "";
            }

            grdPacientes.EditIndex = -1;
            cargarGridViewPacientes();
        }

        protected void grdPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdPacientes.PageIndex = e.NewPageIndex;
            cargarGridViewPacientes();
        }
    }
}