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
<body onload="desactivado()">
    <div class="centrado">
        <form id="form1" runat="server" class="caja-form">
            <h1 class="tittle-form"> Regístrate </h1>
           
            <div class="form-group">
                <input type="text" id="nombre" name="nombre" class="control-inputs" runat="server"  maxlength="40" autocomplete="off" value="" required="required" onkeypress="return valnombre(event)" />
                <label for="correo" class="control-label">
                    Nombre:
                </label>
                <i class="bar"></i>
            </div>

            <div class="form-group">
                <input type="email" id="correo" name="correo" class="control-inputs" runat="server" maxlength="100" value="" required="required" onchange="valcorreo();" />
                <label for="correo" class="control-label">
                    Correo:
                </label>
                <i class="bar"></i>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" class="control-inputs" runat="server" maxlength="40" autocomplete="off" value="" required="required" onchange="valcontra()" />
                <label for="password" class="control-label">
                    Contraseña:
                </label>
                <i class="bar"></i>
           </div>

            <div class="pol">
                <label><input id="check" type="checkbox" name="privacidad" onclick="btnRegistro()" /> <a href="#">He léido y acepto los términos del servicio</a></label>
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
        <br />
        <br />

        <div id="valcorreo">
            <label class="validar">El correo debe tener "@" y terminar en "." y despues debe tener [2-4] caracteres</label>
            <hr />
        </div>

        <div id="valcontra">
            <label class="validar">La contraseña tiene que ser de 8 dijitos y debe tener una [A-Z], una [a-z] y un [0-9]</label>
            <hr />
        </div>

        <div id="exite" runat="server" style="display:none">
            <label class="validar">Ya tienes una cuenta, Inicia sesion. Este correo ya existe</label>
            <hr />
        </div>
        
    </div>
</body>
</html>
<script src="js/valformularios.js"></script>
