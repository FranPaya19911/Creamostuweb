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
                    hola
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
