<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cabezera.ascx.cs" Inherits="aplicacion.cabezera" %>

<%--<link rel="stylesheet" type="text/css" href="css/general.css">--%>

<header>
    <nav>
        <a href="index.aspx"><img id="logo" src="img/logo1.png" alt="logo"></a>
        <ul id="menu">
            <li><a href="index.aspx">Inicio</a></li>
            <li><a href="#">Servicios</a></li>
            <li><a href="contacto.aspx">Contacto</a></li>
        </ul>
        <a  href="logueo.aspx">
            <span><input type="button" class="buttoniniciar" name="botton" value="Iniciar Session" /></span>

        </a>
    </nav>
</header>


