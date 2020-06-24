<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatUsuario.aspx.cs" Inherits="aplicacion.usuarios.ChatUsuario" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/chat.css" rel="stylesheet" />
    <title>Chat</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>'); AbajoArriba();">
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div  id="admin"></div>
    <div id="invitado"></div>
    
    <div class="body">
        <section class="chat">
            <div class="chat-header">
                <div>
                    Chat con soporte
                </div>
            </div>
            <main id="divu" class="chat-main" runat="server">
                
            </main>
            <form class="men-inputarea" id="form1" runat="server">
                <input id="mensaje" type="text" class="men-input" placeholder="Escriba su mensaje..." runat="server" required="required" />
                <asp:Button ID="Button1" class="men-send-btn" runat="server" Text="Enviar" OnClick="Button1_Click" />
            </form>
        </section>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
<script src="../js/general.js"></script>
