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
using static System.Console;

namespace Vistas
{

    
    public partial class AltaPaciente : System.Web.UI.Page
    {

        NegocioNacionalidades negNac = new NegocioNacionalidades();
        NegocioProvincias negPro = new NegocioProvincias();
        NegocioLocalidad negLo = new NegocioLocalidad();
        NegocioPaciente np = new NegocioPaciente();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                CargarNacionalidades();
                CargarProvincias();
                CargarLocalidades();
            }
        }

        private void CargarNacionalidades()
        {
            DataTable dtNacionalidad = negNac.GetTabla();
            ddlNacionalidad.DataSource = dtNacionalidad;
            ddlNacionalidad.DataTextField = "Descripcion_Nacionalidad";
            ddlNacionalidad.DataValueField = "IdNacionalidad";
            ddlNacionalidad.DataBind();
            ddlNacionalidad.Items.Insert(0, new ListItem("--Seleccione una Nacionalidad--", "0"));

        }
        private void CargarProvincias()
        {
            if (Convert.ToInt32(ddlNacionalidad.SelectedValue) == 0)
            {
                ddlProvincia.Items.Insert(0, new ListItem("--Seleccione una provincia--", "0"));
                return;
            }
            DataTable dtProvincias = negPro.GetTabla(ddlNacionalidad.SelectedValue);
            ddlProvincia.DataSource = dtProvincias;
            ddlProvincia.DataTextField = "Descripcion_Provincia";
            ddlProvincia.DataValueField = "IdProvincia_Provincia";
            ddlProvincia.DataBind();
            
        }
        private void CargarLocalidades()
        {
            if (Convert.ToInt32(ddlProvincia.SelectedValue)==0)/*.SelectedIndex == 0)*/
            {
                ddlLocalidad.Items.Insert(0, new ListItem("--Seleccione una localidad--", "0"));
                return;
            }
            DataTable dtLocalidad = negLo.GetTabla(ddlProvincia.SelectedValue);
            ddlLocalidad.DataSource = dtLocalidad;
            ddlLocalidad.DataTextField = "Descripcion_L";
            ddlLocalidad.DataValueField = "IdLocalidad_L";
            ddlLocalidad.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlNacionalidad.SelectedValue) == 0)
            {
                lblProvincia.Text = "Seleccionar Nacionalidad.";
                return;
            }
            Boolean estado;


            if (rbMasculino.Checked == true && rbFemenino.Checked == true)
            {
                lblbutton.Text = "Seleccionar un solo género.";
                rbMasculino.Checked = false;
                rbFemenino.Checked = false;
                return;
            }
            else {
                lblbutton.Text = "";
            }

            string valor = string.Empty;
            
            if (rbMasculino.Checked)
            {
                valor = rbMasculino.Text;
            }
            else if (rbFemenino.Checked)
            {

                valor = rbFemenino.Text;
            }


            string dni = txtDni.Text.Trim();
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string sexo = valor;
            string nacionalidad = ddlNacionalidad.SelectedValue.ToString();
            DateTime fechanac = DateTime.Parse(Fechaelegida.Text.ToString());
            string provincia = ddlProvincia.SelectedValue.ToString();
            string localidad = ddlLocalidad.SelectedValue.ToString();
            string direccion = txtDireccion.Text.Trim();
            string email = txtEmail.Text.Trim();
            string telefono = txtTelefono.Text.Trim();
            bool estate = true;

            estado = np.agregarPaciente(Convert.ToInt32(dni), nombre, apellido, sexo, nacionalidad, fechanac, direccion, localidad, provincia,
            email, telefono, estate);
            if (estado == true)
            {
                lblExito.Text = "Paciente Agregado";
                Limpiarcampos();

                CargarNacionalidades();
                CargarProvincias();
                CargarLocalidades();

            }
            else
            {
                lblExito.Text = "Paciente ya existente!";
                lblProvincia.Text = "";
            }
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarLocalidades();
        }

        protected void CalendarioPaciente_SelectionChanged(object sender, EventArgs e)
        {
            string fechanaci = CalendarioPaciente.SelectedDate.ToString();
            Fechaelegida.Text = fechanaci;
        }

        void Limpiarcampos() {
            txtDni.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            rbMasculino.Checked = false;
            rbFemenino.Checked = false;
            lblProvincia.Text = "";
            txtTelefono.Text = "";
            txtEmail.Text = "";
            txtDireccion.Text = "";
            lblbutton.Text = "";
            Fechaelegida.Text = "";
        }

        protected void ddlNacionalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarProvincias();
        }
    }
}