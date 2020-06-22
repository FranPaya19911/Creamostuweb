using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace aplicacion.usuarios
{
    public partial class Mispedidos : System.Web.UI.Page
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
            int filas;
            string Resultado;
            string StrCadenaConexion = ConfigurationManager.ConnectionStrings["DBCreamostuweb"].ConnectionString;
            string StrComandoSql = "select pro.Caracteristicas, pro.Precio, pro.Nuevo, pro.Comentario, pe.Estado from PRODUCTOS as pro INNER JOIN PEDIDOS as pe ON pro.ProductoId = pe.FkProducto where pro.FkUsuario ='" + idusuario + "'";

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
                        Resultado = "<table><thead><tr>";
                        Resultado += "<th>Características</th>";
                        Resultado += "<th>Precio</th>";
                        Resultado += "<th>Tipo de Producto</th>";
                        Resultado += "<th>Comentario</th>";
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
                            Resultado += "<td>" + reader.GetString(4) + "</td>";
                            Resultado += "</tr>";
                            filas++;
                        }
                        Resultado += "</tbody></table>";
                        Mispedidostabla.InnerHtml = Resultado;
                    }
                    else
                    {
                        Mispedidostabla.InnerHtml = "<h2> No tienes pedidos </h2>";
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

        protected void producto_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
        }

        protected void Paginaweb_Click(object sender, EventArgs e)
        {
            funcion("paginaweb");
        }

        protected void Analisis_Click(object sender, EventArgs e)
        {
            funcion("analisisweb");
        }

        public void funcion(string valor)
        {
            Session["producto"] = valor;
            string url = "/usuarios/Producto.aspx";
            HttpContext.Current.Response.Redirect(url);
            
        }
    }
}