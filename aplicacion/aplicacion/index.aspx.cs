using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string contador = "0";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cont"] == null)
            {
                Session["cont"] = contador;
            }
            
            if (Session["cont"].ToString() == "0")
            {
                string user = "invitado";
                Session["user"] = user;
                
                Session["id"] = "id";
                Session["nombre"] = "nombre";

                contador = "1";
                Session["cont"] = contador;
            }
        }
    }
}