using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace aplicacion.admin
{
    public partial class Clientes : System.Web.UI.Page
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
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = GridView1.SelectedDataKey.Value.ToString();
            int filas;
            string Resultado;
            string StrCadenaConexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            string StrComandoSql = "select u.Nombre, pr.Caracteristicas, pr.Nuevo, p.Estado from PEDIDOS as p inner join USUARIOS as u on p.FkUsuario = u.UsuarioId inner join PRODUCTOS as pr on p.FkProducto = pr.ProductoId where p.FkUsuario = '" + id + "';";

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
                        Resultado = "<br /><h2>Los Pedidos del cliente</h2><br /><table><thead><tr>";
                        Resultado += "<th>Nombre</th>";
                        Resultado += "<th>Características</th>";
                        Resultado += "<th>Tipo de Producto</th>";
                        Resultado += "<th>Estado</th>";
                        Resultado += "</tr></thead><tbody>";

                        filas = 0;
                        while (reader.Read())
                        {
                            Resultado += "<tr>";
                            Resultado += "<td>" + reader.GetString(0) + "</td>";
                            Resultado += "<td>" + reader.GetValue(1) + "</td>";
                            if (reader.GetBoolean(2) == true)
                            {
                                Resultado += "<td>Página Web</td>";
                            }
                            else
                            {
                                Resultado += "<td>Análisis Web</td>";
                            }
                            Resultado += "<td>" + reader.GetString(3) + "</td>";
                            Resultado += "</tr>";
                            filas++;
                        }
                        Resultado += "</tbody></table>";
                        Pedidoscliente.InnerHtml = Resultado;
                    }
                    else
                    {
                        Pedidoscliente.InnerHtml = "<h2> No tiene pedidos </h2>";
                    }
                    reader.Close();
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
        }
    }
}