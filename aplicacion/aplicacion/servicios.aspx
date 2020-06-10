<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="servicios.aspx.cs" Inherits="aplicacion.servicios" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="css/general.css" rel="stylesheet" />
    <title>Servicios</title>
</head>
<body>
    <div>
        <uc1:cabezera runat="server" ID="cabezera" />
    </div>
    <div class="main">

        <h1> Creacion de páginas web & Analisis web </h1>

        <div></div>
        <div></div>


        <asp:Panel runat="server">
        <div id="paginaweb" runat="server"></div>
        </asp:Panel>


    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</body>
</html>
