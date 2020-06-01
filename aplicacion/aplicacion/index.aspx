<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.WebForm1" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/general.css" />
    <title>Inicio</title>
</head>
<body style="background-color: gray">
    <div>
        <uc1:cabezera runat="server" id="cabezera" />
    </div>
    
    <div class="main">
    <form id="form1" runat="server">
        <div>
            <p>Hola</p>

        </div>
    </form>
    </div>


    <div>
        <uc1:Footer runat="server" id="Footer" />
    </div>
</body>
</html>
