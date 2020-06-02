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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["usuario"] = true;
            Console.WriteLine(Session["usuario"].ToString());

            string url = "/usuarios/index.aspx";
            HttpContext.Current.Response.Redirect(url);
        }
    }
}