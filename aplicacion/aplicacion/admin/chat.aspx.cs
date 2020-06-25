using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace aplicacion.admin
{
    public partial class chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                string valor = (string)Session["user"].ToString();
                if (valor != "admin")
                {
                    string url = "../Error.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
            }

            string texto = "";
            texto = cargar();
            listaclientes.InnerHtml= texto;
        }

        public string cargar()
        {
            string texto = "<p>Los usuario no han iniciado ninguna conversacion</p>";
            int numusuario;
            int valor;
            int prueba, numfilas;
            string nombre;

            string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            SqlConnection conexion = new SqlConnection(BDconexion);

            string strComandSqlConsulta = "select COUNT(@@ROWCOUNT) from MENSAJES;";
            string strComandSqlValor = "select COUNT(@@ROWCOUNT)  from USUARIOS; ";

            conexion.Open();
            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = strComandSqlConsulta;
            prueba = Convert.ToInt32(comando.ExecuteScalar());

            if(prueba > 0)
            {
                texto = "";
                comando.CommandText = strComandSqlValor;
                valor = Convert.ToInt32(comando.ExecuteScalar());

                for(numusuario = 2; valor >= numusuario; numusuario++)
                {
                    string strComandSqlusuario = "select COUNT(@@ROWCOUNT) from MENSAJES as m where m.FkUsuario ='"+ numusuario +"'";
                    comando.CommandText = strComandSqlusuario;
                    numfilas = Convert.ToInt32(comando.ExecuteScalar());
                   
                    if(numfilas > 0)
                    {
                        string strComandSqlnombre = "select u.Nombre from USUARIOS as u where u.UsuarioId ='" + numusuario + "'";
                        comando.CommandText = strComandSqlnombre;
                        nombre = (comando.ExecuteScalar()).ToString();

                        texto += "<div class='usuario'>";
                        texto += "<input type='button' id='Button2' runat='server' value='"+ nombre + "' onclick='conector(" + '"' + nombre + '"' + ',' + numusuario + ");' />";
                        texto += "</div><hr />";
                    }
                }
            }


            conexion.Close();

            return texto;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string menfecha = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss");
            int idusuario = (int)Session["id"];
            string men = mensaje.Value;
            int chatnum = Int32.Parse(idusu.Value);
            string url = "";

            if (chatnum != 0)
            {
                string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
                SqlConnection conexion = new SqlConnection(BDconexion);

                string strcomandosqlinsercion = "insert mensajes" + "(numerodelchat, mensaje, fecha, fkusuario) values(" + "'" + chatnum + "', '" + men + "', '" + menfecha + "', '" + idusuario + "'); ";


                try
                {
                    conexion.Open();
                    SqlCommand comando = conexion.CreateCommand();
                    comando.CommandText = strcomandosqlinsercion;
                    comando.ExecuteNonQuery();

                    url = "/admin/chat.aspx";
                }
                catch 
                {
                    url = "../error.aspx";
                }
                finally
                {
                    conexion.Close();
                    HttpContext.Current.Response.Redirect(url);
                }
            }
        }
    

        
        
        
        [ScriptMethod, WebMethod]
        public static  string docall(string nombre, int ids)
        {
            string resul = "";

            int filas;
            string StrCadenaConexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            string StrComandoSql = "select m.NumeroDelChat, m.Mensaje, m.Fecha, m.FkUsuario, u.Nombre from MENSAJES as m inner join USUARIOS as u on m.FkUsuario = u.UsuarioId where m.NumeroDelChat ='" + ids + "'";

            using (SqlConnection conexion = new SqlConnection(StrCadenaConexion))
            {
                try
                {
                    conexion.Open();
                    SqlCommand comando = conexion.CreateCommand();
                    comando.CommandText = StrComandoSql;
                    SqlDataReader reader = comando.ExecuteReader();
                    if (reader.HasRows)
                    {
                        filas = 0;
                        while (reader.Read())
                        {
                            string num = "" + reader.GetValue(3);
                            if (num == "1")
                            {
                                resul += "<div class='men right-men'>";
                                resul += "<div class='men-contenedor'>";
                                resul += "<div class='men-info'>";
                                resul += "<div class='men-info-nombre'>" + reader.GetString(4) + "</div>";
                                resul += "<div class='men-info-tiempo'>" + reader.GetString(2) + "</div>";
                                resul += "</div>";
                                resul += "<div class='men-texto'>" + reader.GetString(1) + "</div>";
                                resul += "</div></div>";
                            }
                            else
                            {
                                resul += "<div class='men left-men'>";
                                resul += "<div class='men-contenedor'>";
                                resul += "<div class='men-info'>";
                                resul += "<div class='men-info-nombre'>" + reader.GetString(4) + "</div>";
                                resul += "<div class='men-info-tiempo'>" + reader.GetString(2) + "</div>";
                                resul += "</div>";
                                resul += "<div class='men-texto'>" + reader.GetString(1) + "</div>";
                                resul += "</div></div>";
                            }

                            filas++;
                        }
                        reader.Close();
                    }
                }

                catch
                {
                    string url = "../Error.aspx";
                    HttpContext.Current.Response.Redirect(url);
                }
                finally
                {
                    conexion.Close();
                }
            }
            return resul;
        }
    }
}