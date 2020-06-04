<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logueo.aspx.cs" Inherits="aplicacion.logueo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Correo:</p>
            <input id="Text1" type="text" />
        </div>
        <div>
            <p>Contraseña</p>
            <input id="Text2" type="text" />
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Iniciar sesion" OnClick="Button1_Click" />
        </div>
        <div>
             <p>
                 ¿No tienes una cuenta en CreamosTuWeb?
                 <a onclick="mostrar()" ><span>Regístrate</span></a>
             </p>
        </div>
    </form>
</body>
</html>

<script>
    function mostrar() {
        alert("hola");
        if ('<%= Session["user"].ToString() %>' != null) {
            alert("hola1");
            var valores_sesion = '<%= Session["user"] %>';
            alert(valores_sesion);
        }
    }
    
    
</script>