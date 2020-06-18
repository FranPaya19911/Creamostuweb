using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace aplicacion
{
    public partial class logueo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string valor = (string)Session["user"].ToString();
                if (valor != "invitado")
                {
                    string url = "index.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cor = correo.Value;
            string pas = password.Value;
            int id = 0;
            string nombre = "";
            bool VariablesDeSession = false;
             string url = "";

            string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            SqlConnection conexion = new SqlConnection(BDconexion);

            string strComandSqlConsulta = "Select * from dbo.USUARIOS where Activo = 'true' and Correo = '"+ cor +"' and  Pass = '"+ pas +"';";
            string strComandSqlId = "Select UsuarioId from dbo.USUARIOS where Correo = '" + cor + "'";
            string strComandSqlNombre = "Select Nombre from dbo.USUARIOS where Correo = '" + cor + "'";


            try
            {
                conexion.Open();

                SqlCommand comando = conexion.CreateCommand();
                comando.CommandText = strComandSqlConsulta;
                SqlDataReader dr = comando.ExecuteReader();

                 

                if (dr.Read())
                {
                    dr.Close();

                    comando.CommandText = strComandSqlId;
                    id = Convert.ToInt32(comando.ExecuteScalar());

                    comando.CommandText = strComandSqlNombre;
                    nombre = (comando.ExecuteScalar()).ToString();

                    VariablesDeSession = true;
                    
                }
                else
                {
                    noexiste.Attributes.Add("style", "display:block");
                }

            }
            catch
            {
                 url = "Error.aspx";
            }
            finally
            {
                conexion.Close();

                if (VariablesDeSession)
                {
                    string user;

                    if(id == 1)
                    {
                        user = "admin";
                    }
                    else
                    {
                        user = "usuario";
                    }
                    
                    Session["user"] = user;
                    Session["id"] = id;
                    Session["nombre"] = nombre;

                    url = "index.aspx";
                }

                HttpContext.Current.Response.Redirect(url);
            }

        }
    }
}