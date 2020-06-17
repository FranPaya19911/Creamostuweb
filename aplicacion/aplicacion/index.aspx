<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.WebForm1" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<%@ Register Src="~/admin/cabeceraAdmin.ascx" TagPrefix="uc1" TagName="cabeceraAdmin" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="stylesheet" type="text/css" href="css/general.css" />
    <link rel="stylesheet" type="text/css" href="css/Inicio.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" />

    <title>Inicio</title>

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

        <div>
            <div class="parallax" id="contenedor-parallax">
                <h1>Creamos Tu Web</h1>
                <p>Tú empresa de desarrollo web de confianza</p>
            </div>
        </div>
        <div class="texto">
            <p>
               Somos una empresa que se dedica a la creación de páginas web a 
                medida para nuestros clientes, también ofrecemos la posibilidad de
                modificar una creada por nosotros en cualquier momento y de modificar
                una que no haya sido creada por nosotros también para ello tenemos la
                opción de analizar tú web.
            </p>
        </div>
        <div class="contenedor">
            <div>
                <img src="img/Resposive.png" alt="Responsive" />
                
                <h2>Responsive</h2>
                
                <p>EL diseño web adaptativo</p>
            </div>
            <div>
                <img src="img/acuerdo.png" alt="Acuerdo" />
                
                <h2>Compromiso</h2>
                
                <p>Con nuestros clientes</p>
            </div>
        </div>

        <div class="contenedor">
            <div>
                <img src="img/garantia.png" alt="Garantia" />
                
                 <h2>Garantía</h2>
                
                <p>Compromiso de satisfacción</p>
            </div>
            <div>
                <img src="img/servicio.png" alt="cServicio" />
                
                <h2>Servicio</h2>
                
                <p>Personalizado y profesional</p>
            </div>
        </div>
    </div>

    <div>
        <uc1:Footer runat="server" id="Footer" />
    </div>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/footer.js"></script>
<script src="https://kit.fontawesome.com/509deda241.js" crossorigin="anonymous"></script>
<script src="js/general.js"></script>
<%--<script> 
    if ('<%= Session["user"].ToString() %>' != null) {
        var valores_sesion = '<%= Session["user"] %>' + ", " + '<%= Session["nombre"] %>' + ", " + '<%= Session["id"] %>';
        alert(valores_sesion);
    }
</script>--%>

