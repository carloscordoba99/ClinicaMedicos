using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;

namespace Dao
{
    public class DaoUsuario
    {
        AccesoDatos ds = new AccesoDatos();
        public Usuario getUsuario(Usuario user)
        {
            String nomTabla = "Administradores";
            String consulta = "SELECT * FROM Administradores where NombreUsuario_A='"+user.getNombreUsuario()
                            +"'AND PassUsuario_A ='"+user.getContraseñaUsuario()+ "' AND Estado_A= 'True'";
            DataTable tabla = ds.ObtenerTabla(nomTabla, consulta);
            if (tabla.Rows.Count != 0)
            {
                user.setAdministrador(Convert.ToBoolean(tabla.Rows[0][2]));
                user.setEstadoUsuario(Convert.ToBoolean(tabla.Rows[0][3]));
            }
            else
            {
                int noexiste = -1;
                user.setNombreUsuario(noexiste.ToString());
            }
            return user;
        }

        public Boolean existeUsuario(Usuario user)
        {
            String consulta = "SELECT * FROM Administradores where NombreUsuario_A='" + user.getNombreUsuario() + "'";
            return ds.existe(consulta);
        }

        public int agregarUsuario(Usuario usu)
        {

            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioAgregar(ref comando, usu);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SpAgregarUsuario");
        }

        private void ArmarParametrosUsuarioAgregar(ref SqlCommand Comando, Usuario usu)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@NombreUsuario_A", SqlDbType.VarChar);
            SqlParametros.Value = usu.getNombreUsuario();
            SqlParametros = Comando.Parameters.Add("@PassUsuario_A", SqlDbType.VarChar);
            SqlParametros.Value = usu.getContraseñaUsuario();
            SqlParametros = Comando.Parameters.Add("@EsAdministrador_A", SqlDbType.Bit);
            SqlParametros.Value = usu.getAdministrador();
            SqlParametros = Comando.Parameters.Add("@Estado_A", SqlDbType.Bit);
            SqlParametros.Value = usu.getEstadoUsuario();
        }
    }


}
