<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="aplicacion.registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <link rel="stylesheet" href="css/contacto.css" />
    <link rel="stylesheet" type="text/css" href="css/general.css" />
    <title>register</title>
</head>
<body  onload="desactivado()">
    <div class="centrado">
        <form id="form1" runat="server" class="caja-form">
            <h1 class="tittle-form"> Regístrate </h1>
           
            <div class="form-group">
                <input type="text" id="nombre" name="nombre" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required"  />
                <label for="correo" class="control-label">
                    Nombre:
                </label>
                <i class="bar"></i>
            </div>

            <div class="form-group">
                <input type="email" id="correo" name="correo" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required"  />
                <label for="correo" class="control-label">
                    Correo:
                </label>
                <i class="bar"></i>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required"  />
                <label for="password" class="control-label">
                    Contraseña:
                </label>
                <i class="bar"></i>
           </div>

            <div class="pol">
                <label><input id="check" type="checkbox" name="privacidad" onclick="privo()" /> <a href="#">He léido y acepto los términos del servicio</a></label>
           </div>

            <div>
                <asp:Button ID="Button1" CssClass="btn-enviar"  runat="server" Text="Continuar" OnClick="Button1_Click"/>
            </div>

            <div class="logintxt">
                 <span>
                     ¿Tienes una cuenta de CreamosTuWeb?
                     <a href="logueo.aspx" >Inicia sesión</a>
                 </span>
                <br />
                <br />
                <span>
                     <a href="index.aspx" >Volver a todas la opciones del inicio</a>
                </span>
            </div>
        </form>
    </div>
</body>
</html>
<script>

    function desactivado() {
        document.getElementById("Button1").disabled = true;
    }

    function privo() {
        var checked = document.getElementById("check").checked;

        if (checked) {
            document.getElementById("Button1").disabled = false;
        } else {
            document.getElementById("Button1").disabled = true;
        }
    }
</script>
