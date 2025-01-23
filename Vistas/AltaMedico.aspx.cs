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
using System.Diagnostics.Eventing.Reader;

namespace Vistas
{
    public partial class AltaMedico : System.Web.UI.Page
    {
        NegocioNacionalidades negNac = new NegocioNacionalidades();
        NegocioProvincias negPro = new NegocioProvincias();
        NegocioLocalidad negLo = new NegocioLocalidad();
        NegocioEspecialidad negEspe = new NegocioEspecialidad();
        NegocioMedico negMed = new NegocioMedico();
        NegocioUsuario negUsu = new NegocioUsuario();
        NegocioUsuario nu = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuario.Text = Session["NombreUsuario"].ToString();
            if (!IsPostBack)
            {
                CargarNacionalidades();
                CargarProvincias();
                CargarLocalidades();
                CargarEspecialidades();
                ddlLocalidades.Items.Insert(0, new ListItem("--Seleccione una Localidad--", "0"));
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
            if (Convert.ToInt32(ddlProvincia.SelectedValue) == 0)/*.SelectedIndex == 0)*/
            {
                ddlLocalidades.Items.Insert(0, new ListItem("--Seleccione una localidad--", "0"));
                return;
            }
            DataTable dtLocalidad = negLo.GetTabla(ddlProvincia.SelectedValue);
            ddlLocalidades.DataSource = dtLocalidad;
            ddlLocalidades.DataTextField = "Descripcion_L";
            ddlLocalidades.DataValueField = "IdLocalidad_L";
            ddlLocalidades.DataBind();
        }

        private void CargarEspecialidades()
        {
            DataTable dtEspecialidad = negEspe.GetTabla();
            ddlEspecialidad.DataSource = dtEspecialidad;
            ddlEspecialidad.DataTextField = "Descripcion_E";
            ddlEspecialidad.DataValueField = "IdEspecialidad_E";
            ddlEspecialidad.DataBind();
            ddlEspecialidad.Items.Add(new ListItem("--Seleccione una especialidad--", "0"));
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Usuario usu = new Usuario();
            if (Convert.ToInt32(ddlNacionalidad.SelectedValue) == 0)
            {
                lblProvincia.Text = "Seleccionar Nacionalidad.";
                return;
            }
            
            if (Convert.ToInt32(ddlEspecialidad.SelectedValue) == 0)
            {
                lblEspecialidad.Text = "Seleccionar Especialidad.";
                return;
            }
            Boolean estado;

            //Valida que el textbox no este vacio
            if (txtLegajo.Text.Length.Equals(0))
            {
                revlegajo.IsValid = false;
                return;
            }

            int hora = 0;
            char dia = '0';
            if (rbLMM.Checked == true && rbJVS.Checked == true)
            {
                lblbutton.Text = "Seleccionar un solo dia.";
                rbLMM.Checked = false;
                rbJVS.Checked = false;
                return;
            }
            else if (rbLMM.Checked == false && rbJVS.Checked == false)
            {
                lblDia.Text = "Seleccionar un dia.";
            }
            else { lblDia.Text = ""; }
            
            if (rbLMM.Checked)
            {
                dia ='1';
            }
            else if (rbJVS.Checked)
            {
                dia = '2';
            }
            if (rb814.Checked == true && rb1420.Checked == true)
            {
                lblbutton.Text = "Seleccionar un solo horario.";
                rb814.Checked = false;
                rb1420.Checked = false;
                return;
            }
            else if (rb814.Checked == false && rb1420.Checked == false)
            {
                lblHorario.Text = "Seleccionar un horario.";
            }
            else { lblHorario.Text = ""; }
            if (rb814.Checked)
            {
                hora = 814;
            }
            else if (rb1420.Checked)
            {
                hora = 1420;
            }

            bool agregarusu;
            if (agregarusu = nu.agregarUsuario(txtUsuario.Text.Trim(), txtContraseña.Text.Trim()) == true)
            {
                string usuario = txtUsuario.Text.Trim();
                string pass = txtContraseña.Text.Trim();
                int legajo = Convert.ToInt32(txtLegajo.Text);
                string provincia = ddlProvincia.SelectedValue.ToString();
                string localidad = ddlLocalidades.SelectedValue.ToString();
                int especialidad = Convert.ToInt32(ddlEspecialidad.SelectedValue);
                string dni = txtDNI.Text.Trim();
                string nombre = txtNombre.Text.Trim();
                string apellido = txtApellido.Text.Trim();
                string sexo;
                if (Convert.ToInt32(rbMyF.SelectedItem.Value) == 1)
                {
                    sexo = "M";
                }
                else sexo = "F";
                string nacionalidad = ddlNacionalidad.SelectedValue;
                DateTime fechanac = DateTime.Parse(txtFecha.Text.ToString());
                string direccion = txtDireccion.Text.Trim();
                string email = txtEmail.Text.Trim();
                string telefono = txtTelefono.Text.Trim();
                
                bool estate = true;
                estado = negMed.agregarMedico(legajo, provincia, localidad, especialidad, usuario, pass, dni, nombre, apellido, sexo, nacionalidad, fechanac, direccion,
                    email, telefono, dia, hora, estate);
                if (estado == true)
                {
                    lblExito.Text = "Médico Agregado.";
                    LimpiarCampos();
                }
                else
                {
                    lblExito.Text = "¡Médico duplicado!.";
                }
            }
            else
            {
                lblUsuarioRepetido.Text = "Usuario ya existente.";
                txtUsuario.Text = "";
                return;
            }
        }
        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarLocalidades();
        }

        protected void ddlNacionalidad_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarProvincias();
        }

        protected void Calendarfecha_SelectionChanged(object sender, EventArgs e)
        {
            string fechanaci = Calendarfecha.SelectedDate.ToString();
            txtFecha.Text = fechanaci;
        }

        protected void LimpiarCampos() {
            txtLegajo.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDNI.Text = "";
            txtDireccion.Text = "";
            txtEmail.Text = "";
            txtTelefono.Text = "";
            txtDireccion.Text = "";
            CargarNacionalidades();
            CargarProvincias();
            CargarLocalidades();
            CargarEspecialidades();
            rbLMM.Checked = false;
            rbJVS.Checked = false;
            txtFecha.Text = "";
            rbMyF.SelectedIndex = -1;
            txtUsuario.Text = "";
            lblUsuarioRepetido.Text = "";
        }
    }
}