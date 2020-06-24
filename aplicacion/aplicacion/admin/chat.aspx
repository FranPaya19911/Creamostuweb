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
            <div class="usuario">
                <input type="button" id="Button2" runat="server" value="carlos" onclick="btnAccept_onclic('ja')"  />
            </div>
            <hr />
        </div>
        <section class="chat">
            <div class="chat-header">
                <div>
                    "Nombre usuario"
                </div>
            </div>
            <main id="divu" class="chat-main">
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
                </asp:ScriptManager>
                <%--visitante
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
                </div>--%>

                <%--local
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
                </div>--%>
                
            </main>
            <div class="men-inputarea"  runat="server">
                <input type="text" class="men-input" placeholder="Escriba su mensaje..." />
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
<script type="text/javascript">
    function btnAccept_onclic(id) {
        PageMethods.docall(id,onSuccess, onFailure);
    }

    function onSuccess(result) {
        
    }


    function onFailure(error) {
        alert(error);
    }

</script>