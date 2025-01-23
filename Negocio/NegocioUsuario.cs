using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
using System.Data;
using System.Diagnostics.Eventing.Reader;

namespace Negocio
{
    public class NegocioUsuario
    {
        DaoUsuario daoObj = new DaoUsuario();
        public Usuario usuarioExiste(string nombre, string contraseña)
        {
            Usuario user = new Usuario();
            user.setNombreUsuario(nombre);
            user.setContraseñaUsuario(contraseña);
            user=daoObj.getUsuario(user);
            return user;
        }

        public bool existeUsuario(string nombre, string contraseña)
        {
             
            Usuario user = new Usuario();
            user.setNombreUsuario(nombre);
            user.setContraseñaUsuario(contraseña);
            if (daoObj.existeUsuario(user) == true)
            {
                return true;
            }
            else
            {
                return false;
            }


        }
        public bool agregarUsuario(String usuario, String pass)
        {
            int cantFilas = 0;
            DaoUsuario daou = new DaoUsuario();
            Usuario usu = new Usuario();

            usu.setNombreUsuario(usuario); 
            usu.setContraseñaUsuario(pass);
            usu.setAdministrador(false);
            usu.setEstadoUsuario(true);
            if (daou.existeUsuario(usu) == false)//si es false es porque no existe
            {
                cantFilas = daou.agregarUsuario(usu);
            }
            if (cantFilas == 1)
                return true;
            else
                return false;
        }
    }
}
