<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logueo.aspx.cs" Inherits="aplicacion.logueo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <link rel="stylesheet" href="css/contacto.css" />
    <link rel="stylesheet" type="text/css" href="css/general.css" />
  
    <title>Login</title>
</head>
<body>
    <div class="centrado">
        <form id="form1" runat="server" class="caja-form">
           
            <h1 class="tittle-form"> Login </h1>
           
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
            <div class="logintxt">
                <span class="cambio" ><a href="#" >¿Has olvidado tu contraseña?</a></span>
            </div>
            <div>
                <asp:Button ID="Button1" CssClass="btn-enviar" runat="server" Text="Iniciar sesion"  OnClick="Button1_Click" />
            </div>

            <div class="logintxt">
                 <span>
                     ¿No tienes una cuenta en CreamosTuWeb?
                     <a href="registro.aspx" >Regístrate</a>
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
         <div id="noexiste" runat="server" style="display:none">
            <label class="validar">Lo sentimos, las credenciales que estás usando no son válidas.</label>
            <hr />
        </div>
    </div>
</body>
</html>