<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearPeticion.aspx.cs" Inherits="aplicacion.usuarios.CrearPeticion" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/contacto.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
    <title>Creacion Petición</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>');">
     
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div  id="admin"></div>
    <div id="invitado"></div>
   
    <div class="main mispedidos">
        <div class="centrado">
            <form id="form1" runat="server" class="caja-form">
           
                <h1 class="tittle-form titulo"> Petición </h1>
           
                <div>
                        <label>Tipo de Petición: </label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem Selected="True" Value="modificacion">Una modificanción de un producto</asp:ListItem>
                              <asp:ListItem Value="Cambio"> Cambio </asp:ListItem>
                        </asp:DropDownList><br />

                        <label>Comentario sobre la Petición</label><br />
                        <textarea id="comentario" rows="6" cols="41" required="required" runat="server" aria-required="true"></textarea><br />
                </div>

                <asp:Button ID="GenerarPeticion" class="btn-enviar" runat="server" Text="Enviar" OnClick="GenerarPeticion_Click"/>
            </form>
        </div>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
<script src="../js/general.js"></script>
