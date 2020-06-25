using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;

namespace aplicacion.usuarios
{
    public partial class ChatUsuario : System.Web.UI.Page
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
            int idusuario = (int)Session["id"];
            int Cantidadmen;

            Cantidadmen = lineasdevueltas(idusuario);

            if (Cantidadmen != 0)
            {
                string texto;
                texto = mensajes(idusuario);
                divu.InnerHtml = texto;
            }
            else
            {
                divu.InnerHtml = "<p> Aun no se ha comenzado ninguna conversación </p>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string menfecha = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss");
            int idusuario = (int)Session["id"];
            string men = mensaje.Value;
            int chatnum = idusuario;
            string url = "";


            string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            SqlConnection conexion = new SqlConnection(BDconexion);

            string strcomandosqlinsercion = "insert mensajes" + "(numerodelchat, mensaje, fecha, fkusuario) values(" + "'" + chatnum + "', '" + men + "', '" + menfecha + "', '" + idusuario + "'); ";


            try
            {
                conexion.Open();
                SqlCommand comando = conexion.CreateCommand();
                comando.CommandText = strcomandosqlinsercion;
                comando.ExecuteNonQuery();

                url = "/usuarios/chatusuario.aspx";
            }
            catch 
            {
                url = "../error.aspx";
            }
            finally
            {
                conexion.Close();
                aviso();
                HttpContext.Current.Response.Redirect(url);
            }
        }


        public int lineasdevueltas(int idusuario)
        {
            int Cantidadmen;
            string BDconexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            SqlConnection conexion = new SqlConnection(BDconexion);

            string strComandSqlConsulta = "select COUNT(@@ROWCOUNT) from MENSAJES WHERE FkUsuario ='" + idusuario + "';";

            conexion.Open();

            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = strComandSqlConsulta;
            Cantidadmen = Convert.ToInt32(comando.ExecuteScalar());

            conexion.Close();

            return Cantidadmen;
        }


        public string mensajes(int valor)
        {
            string resul = "";

            int filas;
            string StrCadenaConexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            string StrComandoSql = "select m.NumeroDelChat, m.Mensaje, m.Fecha, m.FkUsuario, u.Nombre from MENSAJES as m inner join USUARIOS as u on m.FkUsuario = u.UsuarioId where m.NumeroDelChat ='" + valor + "'";

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
                            string num =""+ reader.GetValue(3);
                            if(num != "1")
                            {
                                resul += "<div class='men right-men'>";
                                resul += "<div class='men-contenedor'>";
                                resul += "<div class='men-info'>";
                                resul += "<div class='men-info-nombre'>"+reader.GetString(4)+"</div>";
                                resul += "<div class='men-info-tiempo'>"+reader.GetString(2)+"</div>";
                                resul += "</div>";
                                resul += "<div class='men-texto'>"+reader.GetString(1)+"</div>";
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

        public void aviso()
        {
            string nombre = (string)Session["nombre"];
            string body =
               "<body>" +
               "<h1>Nuevo Mesaje para el soporte</h1>" +
               "<label><b>Nombre del usuario que lo ha enviado: </b></label>" + "<label>"+nombre+"</label>" + "<br />" +
               "</body>";

            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            msg.To.Add("final.proyecto.correo@gmail.com");
            msg.From = new MailAddress("final.proyecto.correo@gmail.com", "Creamos Tu Web", System.Text.Encoding.UTF8);
            msg.Subject = "Mensaje de usuario por contacto.aspx";
            msg.SubjectEncoding = System.Text.Encoding.UTF8;
            msg.IsBodyHtml = true;
            msg.Body = body;
            msg.BodyEncoding = System.Text.Encoding.UTF8;


            //Aquí es donde se hace lo especial
            SmtpClient client = new SmtpClient();
            client.Credentials = new NetworkCredential("final.proyecto.correo@gmail.com", "BeCX4fOd5XRScS%ao");
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true; //Esto es para que vaya a través de SSL que es obligatorio con GMail

            try
            {
                string url ="/usuarios/chatusuario.aspx";
                client.Send(msg);
                HttpContext.Current.Response.Redirect(url);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                string url = "Error.aspx";
                Console.WriteLine(ex.Message);
                HttpContext.Current.Response.Redirect(url);
            }
        }
    }
}