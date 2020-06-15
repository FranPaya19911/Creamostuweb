<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="servicios.aspx.cs" Inherits="aplicacion.servicios" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/admin/cabeceraAdmin.ascx" TagPrefix="uc1" TagName="cabeceraAdmin" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <link href="css/general.css" rel="stylesheet" />
    <link href="css/servicios.css" rel="stylesheet" />

    <title>Servicios</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>')">
    <div  id="admin">
        <uc1:cabeceraAdmin runat="server" ID="cabeceraAdmin" />
    </div>
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div id="invitado">
       <uc1:cabezera runat="server" id="cabezera" />
    </div>

    <div class="main">
        <div class="centrado">
            <h1> Desarrollo web & Análisis </h1>
            <p class="subtitulo"> Servicios</p>
        </div>
        
        <br />
        <p>
            Le ofrecemos un servicio de desarrollo web profesional con la mejor relación de calidad-precio del mercado, 
            utilizando las últimas tecnologías y los estándares internacionales logrando así que su sitio Web sea visible 
            desde cualquier navegador y desde cualquier parte del mundo.
        </p>
        <br />
        <p>
            Hoy en día una web constituye el punto de partida de cualquier presencia digital. 
            En CreamosTuWeb os ofrecemos la posibilidad de crear o mejor una web para 
            consolidar la imagen de marca de vuestras empresas.
        </p>
        <br />
        
        <div class="contenedor" >
            
            <div>
                <img src="img/creamosweb.jpg" alt="imagen web a medida" />
            </div>
            
            <div>
                <h2> Página web</h2>
                <p>
                    Internet es un canal de comunicación muy potente 
                    que debe formar parte de la estrategia de tu  empresa, 
                    en CreamosTuWeb te ofrecemos crear una página web o modificar.
                </p>

                <p>
                    Nosotros sabemos lo importante que puede ser tener una pagina 
                    web buena por eso nuestro precio-calidad es de los mejores 
                    porque nos adaptamos a el tipo de negocio que tengas, 
                    ya sea familiar o multinacional.
                </p>
                <input type="button" id="paginaweb" onclick="comprobar('web')" value="Hacer pedido" />
            </div>

        </div>

        <div class="contenedor">
           
            <div>
                <img src="img/analisis-2.jpg" alt="Analisis web" />
            </div>
            
            <div>
                <h2>Análisis Web</h2>
                <p>
                    Este servicio te servirá para saber los errores que tiene tu
                    página web y como nosotros plantemos corregirlos. 
                    Para CreamosTuWeb es muy importante que nuestros 
                    clientes en sus páginas web no tengan ningún fallo, 
                    debido a que hoy, por hoy se consume mucho internet y 
                    nuestras marcas deben quedar bien en ella. 
                </p>
                <input type="button" id="analisisweb" onclick="comprobar('analisis')" value="Hacer pedido" />
            </div>
        </div>

    </div>

    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</body>
</html>
<script src="js/general.js"></script>
<script>
    function comprobar(id) {

        if ('<%= Session["user"].ToString() %>' == "invitado") {

            location.href = "logueo.aspx";

        } else if ('<%= Session["user"].ToString() %>' == "usuario") {

            if (id == "web") {
                location.href = "";
            } else {
                location.href = "";
            }
        }
        
    }
</script>
