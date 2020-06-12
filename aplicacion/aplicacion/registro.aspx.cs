using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Configuration;
using System.Data.SqlClient;

namespace aplicacion
{
    public partial class registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = "Error.aspx";
            if (Session["user"].ToString() != "invitado")
            {
                HttpContext.Current.Response.Redirect(url);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "Error.aspx";
            if (Session["user"].ToString() != "invitado")
            {
                HttpContext.Current.Response.Redirect(url);
            }


            string nom = nombre.Value;
            string cor = correo.Value;
            string pas = password.Value;


            try
            {
                string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
                using(SqlConnection conexion = new SqlConnection)
                {
                    
                }


            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }

            if (0 == 0)
            {
                url = "index.aspx";
                HttpContext.Current.Response.Redirect(url);
            }
            
        }
    }
}