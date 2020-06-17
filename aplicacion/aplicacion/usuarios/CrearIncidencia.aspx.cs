using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace aplicacion.usuarios
{
    public partial class CrearIncidencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string valor = (string)Session["user"].ToString();
                if (valor != "usuario")
                {
                    string url = "../Error.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
            }
        }

        protected void GenerarIncidencia_Click(object sender, EventArgs e)
        {
            int usuario = (int)Session["id"];
            string tipo, comentarios;
            int valoration = 0;
            bool valor;
            string nota = "";

            tipo = "Tipo de Petición: " + DropDownList1.SelectedValue + ".";
            comentarios = comentario.Value;
            if(valoracion.Value != "")
            {
                valoration = Int32.Parse(valoracion.Value);
                valor = true;
            }
            else{
                nota = valoracion.Value;
                valor = false;
            }

            string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            SqlConnection conexion = new SqlConnection(BDconexion);

            string strComandoSqlInsercion = "";


            if (valor)
            {
                 strComandoSqlInsercion = "INSERT INCIDENCIAS" + "(Tipo, Comentario, Valoracion, FkUsuario) VALUES(" + "'" + tipo + "', '" + comentarios + "', '" + valoration + "', '" + usuario + "'); ";
            }
            else
            {
                strComandoSqlInsercion = "INSERT INCIDENCIAS" + "(Tipo, Comentario, Valoracion, FkUsuario) VALUES(" + "'" + tipo + "', '" + comentarios + "', '" + nota + "', '" + usuario + "'); ";
            }
            

            try
            {
                conexion.Open();
                SqlCommand comando = conexion.CreateCommand();
                comando.CommandText = strComandoSqlInsercion;
                comando.ExecuteNonQuery();
            }
            catch
            {
                string url = "Error.aspx";
                HttpContext.Current.Response.Redirect(url);
            }
            finally
            {
                conexion.Close();
                string url = "../index.aspx";
                HttpContext.Current.Response.Redirect(url);
            }
        }
    }
}