<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="aplicacion.admin.chat" %>
<%@ Register Src="~/admin/cabeceraAdmin.ascx" TagPrefix="uc1" TagName="cabeceraAdmin" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/chat.css" rel="stylesheet" />
    <title>Chat</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>');  AbajoArriba();";>
    <div  id="user"></div>
    <div  id="admin">
        <uc1:cabeceraAdmin runat="server" ID="cabeceraAdmin" />
    </div>
    <form id="form2" runat="server">
    <div class="body">
        <div id="posicionusuarios" class="side-bar">
            <div class="chat-header">
                Clientes
            </div>
            <div id="listaclientes" runat="server">

            </div>
        </div>
        <section class="chat">
            <div class="chat-header">
                <div id="nombreusuario">
                    "Nombre usuario"
                </div>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
            <input type="text" style="display:none" id="idusu" runat="server" value="0" />
            <main id="divu" class="chat-main">   
            </main>
            <div class="men-inputarea"  runat="server">
                <input id="mensaje" type="text" class="men-input" placeholder="Escriba su mensaje..." required="required" runat="server" />
                <asp:Button ID="Button1" class="men-send-btn" runat="server" Text="Enviar" OnClick="Button1_Click" />
            </div>
        </section>
    </div>
    </form>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
<script src="../js/general.js"></script>