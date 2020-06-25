using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace aplicacion
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = "Error.aspx";
            if (Session["user"].ToString() != "invitado")
            {
                HttpContext.Current.Response.Redirect(url);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "Error.aspx";
            if (Session["user"].ToString() != "invitado")
            {
                HttpContext.Current.Response.Redirect(url);
            }

            string nom = nombre.Value;
            string cor = correo.Value;
            string pas = password.Value;
            bool VariablesSession = false;
            int id = 0;

            string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            SqlConnection conexion = new SqlConnection(BDconexion);

            string strComandoSqlConsulta = "Select u.Correo from dbo.USUARIOS as u where u.Correo = '" + cor + "'";
            string strComandoSqlInsercion = "INSERT USUARIOS" + "(Nombre,Correo,Pass,Foto,TipoDeUsuario,Activo) VALUES (" + "'" + nom + "','" + cor + "','" + pas + "','" + null + "','Usuario','True');";
            string strComandoSqlId = "Select UsuarioId from dbo.USUARIOS where Correo = '" + cor + "'";

            try
            {

                conexion.Open();

                SqlCommand comando = conexion.CreateCommand();
                comando.CommandText = strComandoSqlConsulta;

                SqlDataReader dr = comando.ExecuteReader();

                if (dr.Read())
                {
                    exite.Attributes.Add("style", "display:block");
                }
                else
                {
                    dr.Close();

                    SqlTransaction tran = conexion.BeginTransaction();
                    comando.Transaction = tran;

                    try
                    {
                        comando.CommandText = strComandoSqlInsercion;
                        comando.ExecuteNonQuery();
                        tran.Commit();

                        VariablesSession = true;

                        comando.CommandText = strComandoSqlId;
                        id = Convert.ToInt32(comando.ExecuteScalar());

                    }
                    catch 
                    {
                        HttpContext.Current.Response.Redirect(url);
                    }
                }
            }
            catch
            {
                HttpContext.Current.Response.Redirect(url);
            }
            finally
            {
                conexion.Close();

                if (VariablesSession)
                {
                    string user = "usuario";

                    Session["user"] = user;
                    Session["id"] = id;
                    Session["nombre"] = nom;

                    url = "index.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
                
            }
            
        }
    }
}