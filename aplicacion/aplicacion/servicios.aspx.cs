using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacion
{
    public partial class servicios : System.Web.UI.Page
    {
        protected void paginaweb_Click(object sender, EventArgs e)
        {
            funcion("paginaweb");
        }

        protected void analisisweb_Click(object sender, EventArgs e)
        {
            funcion("analisisweb");
        }

        public void funcion(string valor)
        {
            if (Session["user"].ToString() == "usuario") {
                Session["producto"] = valor;
                string url = "/usuarios/Producto.aspx";
                HttpContext.Current.Response.Redirect(url);
            }
            else
            {
                string url = "logueo.aspx";
                HttpContext.Current.Response.Redirect(url);
            }
        }
    }
}