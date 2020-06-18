<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cabeceraAdmin.ascx.cs" Inherits="aplicacion.admin.cabeceraAdmin" %>
<header>
    <nav>
        <a href="index.aspx"><img id="logo" src="../img/logo1.png" alt="logo"></a>
        <ul id="menu">
            <li><a href="../index.aspx">Inicio</a></li>
            <li><a href="../servicios.aspx">Servicios</a></li>
        </ul>
        <div id="usuario" class="prueba">
            <a  href="#">
            <span><input type="text" class="buttoniniciar"  value="Administrador" disabled/></span>
            </a>

            <ul class="submenu ">
                <li><a href="/admin/clientes.aspx">Clientes</a></li>
                <li><a href="#">Chat Clientes</a></li>
                <li><a href="#">Peticiones</a></li>
                <li><a href="#">Incidencia</a></li>
                <li><a href="../CerrarSesion.aspx">Cerrar Sesión</a></li>
            </ul>

        </div>
    </nav>
</header>
