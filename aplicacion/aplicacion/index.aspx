<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.WebForm1" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/general.css" />
    <title>Inicio</title>
    <style>
        .parallax {
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-position: 50% 50%;
            background-size: cover;
            height: 400px;
            background-color: black;
        }

        #contenedor-parallax {
            background-image: url('img/parallax-inicio.png');
        }

        #contenedor-parallax h1 {
            padding-top: 100px;
            color: white;
            text-align: center;
        }

        #contenedor-parallax p {
            color: white;
            text-align: center;
            margin: 10px;
        }

        .contenedor {
            width: 100%;
            text-align: center;
            display: flex;
            margin-bottom: 4%;
            margin-top: 2%;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
        }
    </style>
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
<script>
    alert("hola");
    if ('<%= Session["user"].ToString() %>' != null) {
        alert("hola1");
        var valores_sesion = '<%= Session["user"] %>';
        var contador = '<%= Session["cont"] %>';
        alert(valores_sesion + ". Contador= " + contador);

    }
</script>