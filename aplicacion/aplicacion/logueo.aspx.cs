using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacion
{
    public partial class logueo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string valor = (string)Session["user"].ToString();
                if (valor == "usuario")
                {
                    string url = "/usuarios/index.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string user = "usuario";
            Session["user"] = user;

            string url = "/usuarios/index.aspx";
            HttpContext.Current.Response.Redirect(url);



        }
    }
}