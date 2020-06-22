<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mispedidos.aspx.cs" Inherits="aplicacion.usuarios.Mispedidos" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
    <title>Pedidos</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>');">
     
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div  id="admin"></div>
    <div id="invitado"></div>
   
    <div class="main mispedidos">
        <h1>Mis pedidos</h1>
        
        <form id="form1" runat="server">
            <div class="derecha">
            <h2>Un Nuevo Producto</h2>
            <asp:Button ID="Paginaweb" runat="server" CssClass="btn-mis" Text="Pagina Web" OnClick="Paginaweb_Click" /><br />
            <asp:Button ID="Analisis" runat="server" CssClass="btn-mis" Text="Analisis" OnClick="Analisis_Click" /><br />
            </div>
            <div id="Mispedidostabla" runat="server"></div>
        </form>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
<script src="../js/general.js"></script>