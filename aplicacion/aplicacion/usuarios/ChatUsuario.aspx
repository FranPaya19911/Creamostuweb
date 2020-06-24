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
<body onload="AbajoArriba();">
    
    <section class="chat">
        <div class="chat-header  men-info">
            <div>
                Chat con soporte
            </div>
            <div>
                <a href="../index.aspx"> Volver al inicio </a>
            </div>
        </div>
        <main id="divu" class="chat-main">
            <div class="men left-men">

                <div class="men-contenedor">
                    <div class="men-info">
                        <div class="men-info-nombre">BOT</div>
                        <div class="men-info-tiempo">12:45</div>
                    </div>

                    <div class="men-texto">
                        Hi, welcome to SimpleChat! Go ahead and send me a message. 😄
                    </div>
                </div>
            </div>

            <div class="men right-men">

                <div class="men-contenedor">
                    <div class="men-info">
                        <div class="men-info-nombre">Sajad</div>
                        <div class="men-info-tiempo">12:46</div>
                    </div>

                    <div class="men-texto">
                        You can change your name in JS section!
                    </div>
                </div>
            </div>

        </main>
    <form class="men-inputarea" id="form1" runat="server">
        <input type="text" class="men-input" placeholder="Escriba su mensaje..." />
        <asp:Button ID="Button1" class="men-send-btn" runat="server" Text="Enviar" />
    </form>
    </section>
</body>
</html>
<script src="../js/general.js"></script>
