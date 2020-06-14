using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacion
{
    public partial class CerrarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = "invitado";
            Session["id"] = "id";
            Session["nombre"] = "nombre";

            string url = "index.aspx";
            HttpContext.Current.Response.Redirect(url);
        }
    }
}