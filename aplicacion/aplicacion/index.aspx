<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="aplicacion.WebForm1" %>

<%@ Register Src="~/cabezera.ascx" TagPrefix="uc1" TagName="cabezera" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div>
        <uc1:cabezera runat="server" id="cabezera" />
    </div>
    <form id="form1" runat="server">
        <div>
            <p>Hola</p>

        </div>
    </form>
    <div>
        <uc1:Footer runat="server" id="Footer" />
    </div>
</body>
</html>
