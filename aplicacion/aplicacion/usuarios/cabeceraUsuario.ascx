﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="cabeceraUsuario.ascx.cs" Inherits="aplicacion.usuarios.cabeceraUsuario" %>
<header>
    <nav>
        <a href="index.aspx"><img id="logo" src="../img/logo1.png" alt="logo"></a>
        <ul id="menu">
            <li><a href="../index.aspx">Inicio</a></li>
            <li><a href="../servicios.aspx">Servicios</a></li>
            <li><a href="../contacto.aspx">Contacto</a></li>
        </ul>
        <div id="usuario" class="prueba">
            <a  href="#">
            <span><input id="cabeceraUsuario" type="text" class="buttoniniciar"  value="Nombre usuario" disabled/></span>
            </a>

            <ul class="submenu ">
                <li><a href="/usuarios/Mispedidos.aspx">Mis pedidos</a></li>
                <li><a href="/usuarios/ChatUsuario.aspx">Chat Support</a></li>
                <li><a href="/usuarios/CrearPeticion.aspx">Crear petición</a></li>
                <li><a href="/usuarios/CrearIncidencia.aspx">Crear incidencia</a></li>
                <li><a href="../CerrarSesion.aspx">Cerrar Sesión</a></li>
            </ul>

        </div>
    </nav>
</header>