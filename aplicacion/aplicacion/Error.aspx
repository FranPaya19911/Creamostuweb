<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="aplicacion.Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="css/general.css" rel="stylesheet" />
<title>Error</title>
</head>
<body>
    
    <div class="error">
        <div class="imgerror">
            <img src="img/robot-3256109_640.png" alt="robot averiado" />
        </div>
        <div class="textoerror">
            <h1>Error</h1>
            <h2>
                Página no encontrada
            </h2>
            <br />
            <p>
                Parece que ha habido un error con la página que estabas buscando o usando.<br /> Vuelve a la página de inicio y siga con tu actividad.
            </p>
            <br />
            <a href="index.aspx" class="botonerror">Ir a inicio</a>
        </div>
    </div>

</body>
</html>
