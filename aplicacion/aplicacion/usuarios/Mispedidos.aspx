<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mispedidos.aspx.cs" Inherits="aplicacion.usuarios.Mispedidos" %>
<%@ Register Src="~/usuarios/cabeceraUsuario.ascx" TagPrefix="uc1" TagName="cabeceraUsuario" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
    <title>Pedidos</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>');">
     
    <div  id="user">
        <uc1:cabeceraUsuario runat="server" ID="cabeceraUsuario" />
    </div>
    <div  id="admin"></div>
    <div id="invitado"></div>
   
    <div class="main mispedidos">
        <h1>Mis pedidos</h1>
        
        <form id="form1" runat="server">
            <div class="derecha">
            <h2>Un Nuevo Producto</h2>
            <asp:Button ID="Paginaweb" runat="server" CssClass="btn-mis" Text="Pagina Web" OnClick="Paginaweb_Click" /><br />
            <asp:Button ID="Analisis" runat="server" CssClass="btn-mis" Text="Analisis" OnClick="Analisis_Click" /><br />
            </div>
            <div id="Mispedidostabla" runat="server"></div>
            <%--<asp:SqlDataSource ID="producto" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreamostuweb %>" OnSelecting="producto_Selecting" SelectCommand="select pro.Caracteristicas, pro.Precio, pro.Nuevo, pro.AnalisisWeb, pro.Comentario, pe.Estado from PRODUCTOS as pro INNER JOIN PEDIDOS as pe ON pro.ProductoId = pe.FkProducto where pro.FkUsuario = @id">
                <SelectParameters>
                    <asp:SessionParameter SessionField="id" Name="id" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="producto">
                <Columns>
                    <asp:BoundField DataField="Caracteristicas" HeaderText="Características" SortExpression="Caracteristicas" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                    <asp:CheckBoxField DataField="Nuevo" HeaderText="Pagina web" SortExpression="Pagina web" InsertVisible="False" ShowHeader="False" />
                    <asp:CheckBoxField DataField="AnalisisWeb" HeaderText="Analisis Web" SortExpression="AnalisisWeb" />
                    <asp:BoundField DataField="Comentario" HeaderText="Comentario" SortExpression="Comentario" />
                    <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                </Columns>

            </asp:GridView>--%>
        </form>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
<script src="../js/general.js"></script>