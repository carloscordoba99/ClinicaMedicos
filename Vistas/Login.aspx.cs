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
    public partial class Login : System.Web.UI.Page
    {
        NegocioUsuario neg = new NegocioUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombreUsuario = txtUsuario.Text.Trim();
            string contraseña = txtContraseña.Text;

            Usuario userObj = new Usuario();
            userObj = neg.usuarioExiste(nombreUsuario, contraseña);

            if (userObj.getEstadoUsuario()){
                Session["NombreUsuario"] = nombreUsuario;
                if (userObj.getAdministrador())//Comprueba si es administrador
                {
                    Response.Redirect("MenuAdministrador.aspx");
                }
                else
                {
                    Response.Redirect("MenuMedico.aspx");
                }
            }
            else
            {
                if (userObj.getNombreUsuario() == "-1")
                {
                    lblError.Visible = true;
                }
            }
        }
    }
}