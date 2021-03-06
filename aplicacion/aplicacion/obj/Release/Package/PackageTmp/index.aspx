﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.WebForm1" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="stylesheet" type="text/css" href="css/general.css" />
    <link rel="stylesheet" type="text/css" href="css/Inicio.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" />

    <title>Inicio</title>

</head>
<body>
    <div>
        <uc1:cabezera runat="server" id="cabezera" />
    </div>
    
    <div class="main">

        <div>
            <div class="parallax" id="contenedor-parallax">
                <h1>Creamos Tu Web</h1>
                <p>Tú empresa de desarrollo web de confianza</p>
            </div>
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

<%--<script>
    alert("hola");
    if ('<%= Session["user"].ToString() %>' != null) {
        alert("hola1");
        var valores_sesion = '<%= Session["user"] %>';
        var contador = '<%= Session["cont"] %>';
        alert(valores_sesion + ". Contador= " + contador);

    }
</script>--%>

