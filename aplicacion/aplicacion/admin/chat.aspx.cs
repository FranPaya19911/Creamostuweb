using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace aplicacion.admin
{
    public partial class chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string texto ="<div class='usuario'>";
            string hola = "jajajaj";
            texto += "<input type='button' id='Button2' runat='server' value='carlos' onclick='conector(" + '"'+ hola + '"' + ")' />";
            texto += "</div>";
            texto += "<hr />";
            listaclientes.InnerHtml= texto;
        }

        protected void hola(object sender, EventArgs e)
        {
            MessageBox.Show("hola");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        
        
        
        [ScriptMethod, WebMethod]

        public static string docall(string hola)
        {
            MessageBox.Show(hola);
            return "hola";
                
        }
    }
}