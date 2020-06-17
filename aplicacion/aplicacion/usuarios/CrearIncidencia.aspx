<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearIncidencia.aspx.cs" Inherits="aplicacion.usuarios.CrearIncidencia" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/contacto.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
    <title>Crear Inicidencia</title>
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
           
                <h1 class="tittle-form titulo"> Incidencia </h1>
           
                <div>
                        <label>Tipo de Inicidencia: </label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server">
                              <asp:ListItem Selected="True" Value="Problema">Problema</asp:ListItem>
                              <asp:ListItem Value="Error">Error </asp:ListItem>
                        </asp:DropDownList><br />

                        <label>Comentario sobre la Indicencia</label><br />
                        <textarea id="comentario" rows="6" cols="41" required="required" runat="server" aria-required="true"></textarea><br />

                        <label>Danos tú valoración sobre nuestra página web: </label><br />
                    <input type="number" id="valoracion" max="10" min="1"  runat="server" placeholder="la nota va de 1 a 10" class="input"/><br />
                </div>

                <asp:Button ID="GenerarIncidencia" class="btn-enviar" runat="server" Text="Enviar" OnClick="GenerarIncidencia_Click" />
            </form>
        </div>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
<script src="../js/general.js"></script>