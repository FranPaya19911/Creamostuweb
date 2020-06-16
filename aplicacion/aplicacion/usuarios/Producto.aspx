<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="aplicacion.usuarios.Producto" %>

<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Producto</title>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/contacto.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
</head>
    
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>'); contenido('<%= Session["producto"].ToString() %>');">

    <div id="valor" runat="server"><%= Session["producto"].ToString() %></div>
    
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div  id="admin"></div>
    <div id="invitado"></div>

    <div class="main">
        <h1>Creación de Pedido</h1>
        <div class="centrado">
            <form id="form1" runat="server" class="caja-form">

                <div id="analisis">
                    <label>Dinos tú página web: </label><br />
                    <input type="text" id="nombreweb"  required="required" runat="server" placeholder="https://miweb.com" class="input"/><br />

                    <label>Como de grande es tu web</label><br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                          <asp:ListItem Selected="True" Value="soloPrincipal"> Solo tiene una página principal</asp:ListItem>
                          <asp:ListItem Value="tiene2o3"> Tiene de dos a tres páginas </asp:ListItem>
                          <asp:ListItem Value="tiene4omas"> Tiene 4 o más páginas </asp:ListItem>
                    </asp:DropDownList><br />

                    <label>Comentario sobre análisis</label><br />
                    <textarea id="comentario" rows="6" cols="41" required="required" runat="server" placeholder="Ej: Quiero un análisis completo o ¿Qué quieres que analizamos de tú web concretamente?"></textarea><br />
                </div>
                
        
        
        
        
                <div id="web">
                    <label>Selecciona las Características:</label>
                    <table>
                        <tr>
                            <th>Nombre Producto</th>
                            <th>Descripcion corta</th>
                            <th>Seleccionar</th>
                        </tr>
                        <tr>
                            <td>Página web base</td>
                            <td>Creación página web base, incluye un inicio y un apartado de contacto. Precio 300€.</td>
                            <td><input type="checkbox" id="pagbasico" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Idioma adicional</td>
                            <td>Inserción de un idioma extranjero en la página. Precio 200€ cada idioma.</td>
                            <td><input type="number" id="idioma" max="10" min="0" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Apartado noticias</td>
                            <td>Un apartado de tipo noticias actualizable por el cliente. Precio 60€.</td>
                            <td><input type="checkbox" id="noticia" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Apartado blog</td>
                            <td>Un apartado de tipo blog actualizable por el cliente. Precio 60€.</td>
                            <td><input type="checkbox" id="blog" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Galería fotográfica</td>
                            <td>Creación y configuración de una galería fotográfica. Precio 50€.</td>
                            <td><input type="checkbox" id="fotografia"  runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Galería vídeos</td>
                            <td>Creación y configuración de una galería vídeos. Precio 70€.</td>
                            <td><input type="checkbox" id="video" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Apartado servicios</td>
                            <td>Un apartado donde el cliente ofrece sus servicios. Precio 60€.</td>
                            <td><input type="checkbox" id="servicio" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Formulario</td>
                            <td>Creación de cualquier tipo de formulario. Precio 50€ cada formulario.</td>
                            <td><input type="number" id="formulario" max="99" min="0" runat="server"/></td>
                        </tr>
                        <tr>
                            <td>Foro</td>
                            <td>Creación de un foro con posibilidad de moderación y gestión de los usuarios. Precio 150€</td>
                            <td><input type="checkbox" id="foro" runat="server" /></td>
                        </tr>
                        <tr>
                            <td>Tienda online</td>
                            <td>Página con catálogo de productos configurado para la venta online. Precio 900€</td>
                            <td><input type="checkbox" id="tienda" runat="server"/></td>
                        </tr>
                    </table>

                    <label>Escoge el tipo de diseño</label><br />
                    <asp:DropDownList ID="DropDownList2" runat="server">
                          <asp:ListItem Selected="True" Value="soloPrincipal"> Plantilla estándar (Aspecto gráfico creado a través de una plantilla elegida por el cliente. Precio 400€.) </asp:ListItem>
                          <asp:ListItem Value="tiene2o3"> Plantilla personalizada (Aspecto gráfico creado por el cliente. Precio 800€.) </asp:ListItem>
                    </asp:DropDownList>


                </div>





                <asp:Button ID="buttonEnviar" class="btn-enviar" runat="server" Text="Button" OnClick="buttonEnviar_Click" />
            </form>
        </div>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</body>
</html>
<script src="../js/general.js"></script>
