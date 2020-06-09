using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Net;
using System.Net.Mail;

namespace aplicacion
{
    public partial class contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mennombre, menemail, mentelefono, menconcepto, menmensje;
            
            mennombre = nombre.Value;
            menemail = correo.Value;
            mentelefono = telefono.Value;
            menconcepto = asunto.Value;
            menmensje = mensaje.Value;
           
            
            

           string body = 
                "<body>" + 
                "<h1>Mensaje de contacto </h1>" +
                "<label><b>Nombre: </b></label>" + "<label>"+ mennombre +"</label>"+ "<br />"+
                "<label><b>Correo: </b></label>" + "<label>" + menemail + "</label>" + "<br />" +
                "<label><b>Telefono: </b></label>" + "<label>" + mentelefono + "</label>" + "<br />" +
                "<label><b>Asunto: </b></label>" + "<label>" + menconcepto + "</label>" + "<br />" + "<br />" +
                "<label><b>Mensaje: </b></label>" + "<p>" + menmensje + "</p>" + 
                "</body>";

            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            msg.To.Add("final.proyecto.correo@gmail.com");
            msg.From = new MailAddress("final.proyecto.correo@gmail.com", "Creamos Tu Web", System.Text.Encoding.UTF8);
            msg.Subject = "Urgente mensaje de usuario por contacto";
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
                string url = "contacto.aspx";
                client.Send(msg);
                HttpContext.Current.Response.Redirect(url);
            }
            catch (System.Net.Mail.SmtpException ex)
            {
                string url = "Error.aspx";
                Console.WriteLine(ex.Message);
                Console.ReadLine();
                HttpContext.Current.Response.Redirect(url);
            }
        }
    }
}