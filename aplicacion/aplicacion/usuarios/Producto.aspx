<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="aplicacion.usuarios.Producto" %>

<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #valor{
            display:none;
        }
    </style>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/contacto.css" rel="stylesheet" />
</head>
    
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>')">

    <div id="valor" runat="server"><%= Session["producto"].ToString() %></div>
    
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div  id="admin"></div>
    <div id="invitado"></div>

    <div class="main">
    <h1>Producto</h1>
    <form id="form1" runat="server" >
        <asp:Button ID="buttonEnviar" class="buttoniniciar" runat="server" Text="Button" OnClick="buttonEnviar_Click" />
    </form>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</body>
</html>
<script src="../js/general.js"></script>
