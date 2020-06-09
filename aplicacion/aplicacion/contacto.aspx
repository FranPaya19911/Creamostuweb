<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="aplicacion.contacto" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
    <link rel="stylesheet" href="css/contacto.css" />
    <link rel="stylesheet" type="text/css" href="css/general.css" />
    
<title>Contacto</title>

</head>
<body>
    <div>
        <uc1:cabezera runat="server" ID="cabezera" />
    </div>

    <div class="main"> 

        <h1>Contáctanos y Búscanos</h1>
        <div class="centrado">
            <form id="form1" class="caja-form" runat="server">
                
                <div class="form-group">
                    <input type="text" id="nombre" name="nombre" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required"  />
                    <label for="nombre" class="control-label">
                        Nombre
                    </label>
                    <i class="bar"></i>
                </div>

                <div class="form-group">
                    <input type="email" id="correo" name="correo" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required" />
                    <label for="correo" class="control-label">
                        E-mail
                    </label>
                    <i class="bar"></i>
                </div>

                <div class="form-group">
                    <input type="tel" id="telefono" name="telefono" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required" />
                    <label for="telefono" class="control-label">
                       Telefono
                    </label>
                    <i class="bar"></i>
                </div>

                <div class="form-group">
                    <input type="text" id="asunto" name="asunto" class="control-inputs" runat="server" maxlength="100" autocomplete="off" value="" required="required" />
                    <label for="asunto" class="control-label">
                        Concepto
                    </label>
                    <i class="bar"></i>
                </div>

                <div class="form-group">
                    <textarea id="mensaje" name="mensaje" class="control-inputs" rows="4" cols="50" required="required" runat="server" ></textarea>
                    <label for="mensaje" class="control-label">
                        Mensaje
                    </label>
                    <i class="bar"></i>
                </div>

                <div class="pol">
                    <label><input id="checkbox" type="checkbox" name="privacidad" onclick="priva()" /> <a href="#">Politica de privacidad y cookies</a></label>
                </div>

                <div>
                    <asp:Button ID="Button1" CssClass="btn-enviar" runat="server" Text="Enviar" OnClick="Button1_Click"  disabled/>
               </div>

            </form>
        </div>
        <section>
            <address>
                <a href="tel:+34640933716"><mark> TEL:</mark> 604 933 716</a>
            </address>

          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3127.3466031363614!2d-0.7631721844217677!3d38.387234284457826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd63c61ad0ca25f7%3A0x4d995f3045f75152!2sCalle%20Joan%20Martorell%2C%2003660%20Novelda%2C%20Alicante!5e0!3m2!1ses!2ses!4v1591684530882!5m2!1ses!2ses"></iframe>
        
        </section>
        
    </div>

    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</body>
</html>
<script>
    function priva()
    {
        var checked = document.getElementById("checkbox").checked;

        if (checked) {
            document.getElementById("Button1").disabled = false;
        } else {
            document.getElementById("Button1").disabled = true;
        }
    }
</script>