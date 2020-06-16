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
    public partial class Mispedidos : System.Web.UI.Page
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

        protected void producto_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void Paginaweb_Click(object sender, EventArgs e)
        {
            funcion("paginaweb");
        }

        protected void Analisis_Click(object sender, EventArgs e)
        {
            funcion("analisisweb");
        }

        public void funcion(string valor)
        {
            Session["producto"] = valor;
            string url = "/usuarios/Producto.aspx";
            HttpContext.Current.Response.Redirect(url);
            
        }
    }
}