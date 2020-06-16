using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace aplicacion.usuarios
{
    public partial class Producto : System.Web.UI.Page
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

        protected void buttonEnviar_Click(object sender, EventArgs e)
        {
            
            string tipoDeproducto = (string)Session["producto"].ToString();
            int usuario = (int)Session["id"];

            string caracteristicas, comentarios;
            decimal precio=0;
            bool analisisweb, nuevo;

            if(tipoDeproducto == "paginaweb")
            {
                analisisweb = false;
                nuevo = true;
                comentarios = "vacio";

                caracteristicas = "Caracteristicas:";
                
                if(pagbasico.Checked)
                {
                    caracteristicas = caracteristicas + "Paginabasicaweb";
                    precio = precio + 300;
                }
                if(idioma.Value !=  "")
                {
                    int idiomas = Int32.Parse(idioma.Value);
                    if(idiomas > 0)
                    {
                        caracteristicas = caracteristicas + ", Cantidad de idiomas: "+ idiomas;
                        idiomas = 200 * idiomas;
                        precio = precio + idiomas;
                    }
                    
                }
                if(noticia.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado noticias";
                    precio = precio + 60;
                }
                if (blog.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado blog";
                    precio = precio + 60;
                }

                if (fotografia.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado de fotografia";
                    precio = precio + 50;
                }
                if (video.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado de videos";
                    precio = precio + 70;
                }
                if (servicio.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado de servicios";
                    precio = precio + 60;
                }
                if (formulario.Value != "")
                {
                    int formularios = Int32.Parse(formulario.Value);
                    if (formularios > 0)
                    {
                        caracteristicas = caracteristicas + ", Cantidad de formularios: " + formularios;
                        formularios = 200 * formularios;
                        precio = precio + formularios;
                    }
                }
                if (foro.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado de foro";
                    precio = precio + 150;
                }
                if (tienda.Checked)
                {
                    caracteristicas = caracteristicas + ", Apartado de tienda online";
                    precio = precio + 900;
                }
                int hola = DropDownList2.SelectedIndex;
                MessageBox.Show(hola.ToString());
                MessageBox.Show(caracteristicas + "\n" + "Precio: " + precio);

            }
            else
            {
                analisisweb = true;
                nuevo = false;
                caracteristicas = "Nombre web = "+nombreweb.Value+", ";
                caracteristicas = caracteristicas + "La pagina consta de: "+DropDownList1.SelectedValue+".";
                comentarios = comentario.Value;
                //if(DropDownList1.SelectedIndex)
                precio = 500;
                MessageBox.Show(analisisweb + ", " + nuevo + ", " + caracteristicas + ", " + comentarios);

            }
        }
    }
}