<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.WebForm1" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="stylesheet" type="text/css" href="css/general.css" />
    <link rel="stylesheet" type="text/css" href="css/Inicio.css" />

    <title>Inicio</title>

</head>
<body>
    <div>
        <uc1:cabezera runat="server" id="cabezera" />
    </div>
    
    <div class="main">

        <div>
            <div class="parallax" id="contenedor-parallax">
                <h1>lorem ipsum</h1>
                <p>Lorem ipsum es el texto que se usa habitualmente en diseño.</p>
            </div>
        </div>

        <div class="contenedor">
            <div>
                <a href="#"><img class="img" src="img/imagen-ejemplo.jpg" alt="producto 1" /></a>
                <a href="#">
                    <h2>Producto 1</h2>
                </a>
                <p>Descripcion breve producto 1</p>
            </div>
            <div>
                <a href="#"><img src="img/imagen-ejemplo.jpg" alt="producto 2" /></a>
                <a href="#">
                    <h2>Producto 2</h2>
                </a>
                <p>Descripcion breve producto 2</p>
            </div>
        </div>

        <div class="contenedor">
            <div>
                <img src="img/imagen-ejemplo.jpg" alt="calidad 1" />
                <p>Descripcion sobre calidad 1</p>
            </div>
            <div>
                <img src="img/imagen-ejemplo.jpg" alt="calidad 2" />
                <p>Descripcion sobre calidad 2</p>
            </div>
        </div>
    </div>

    <div>
        <uc1:Footer runat="server" id="Footer" />
    </div>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="js/footer.js"></script>
<script src="https://kit.fontawesome.com/509deda241.js" crossorigin="anonymous"></script>

<%--<script>
    alert("hola");
    if ('<%= Session["user"].ToString() %>' != null) {
        alert("hola1");
        var valores_sesion = '<%= Session["user"] %>';
        var contador = '<%= Session["cont"] %>';
        alert(valores_sesion + ". Contador= " + contador);

    }
</script>--%>

