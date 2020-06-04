<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.usuarios.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a onclick="mostrar()">usuario</a>
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
            var contador = '<%= Session["cont"] %>';
            alert(valores_sesion + ". Contador= " + contador);
        }
    }
</script>
