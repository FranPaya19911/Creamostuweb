<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Peticiones.aspx.cs" Inherits="aplicacion.admin.Peticiones" %>
<%@ Register Src="~/admin/cabeceraAdmin.ascx" TagPrefix="uc1" TagName="cabeceraAdmin" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
    <title>Peticiones</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>')">
    <div  id="user"></div>
    <div  id="admin">
        <uc1:cabeceraAdmin runat="server" ID="cabeceraAdmin" />
    </div>
    <div id="invitado"></div>
    <div class="main">
        <h1>Peticiones</h1>
        <br />
        <form id="form1" runat="server">
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreamostuweb %>" SelectCommand="select u.Nombre,p.Tipo, p.Comnetario from PETICIONES as p inner join USUARIOS as u on p.FkUsuario = u.UsuarioId;"></asp:SqlDataSource>
                
            </div>

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Cliente" SortExpression="Nombre" />
                        <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
                        <asp:BoundField DataField="Comnetario" HeaderText="Comentario" SortExpression="Comnetario" />
                    </Columns>
                         <PagerSettings FirstPageText="Primera" LastPageText="Última" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
                </asp:GridView>

        </form>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
