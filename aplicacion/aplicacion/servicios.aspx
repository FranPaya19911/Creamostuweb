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
        <form id="form1" runat="server">
            <div>
            </div>
        </form>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    




        <asp:AdRotator ID="AdRotator1" runat="server" />


        <asp:Panel runat="server">
        <div id="paginaweb" runat="server"></div>
        </asp:Panel>


    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>

</body>
</html>
