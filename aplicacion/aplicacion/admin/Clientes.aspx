<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="aplicacion.admin.Clientes" %>
<%@ Register Src="~/admin/cabeceraAdmin.ascx" TagPrefix="uc1" TagName="cabeceraAdmin" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc1" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    
    <link href="../css/general.css" rel="stylesheet" />
    <link href="../css/producto.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Clientes</title>
</head>
<body onload="header('<%= Session["user"].ToString() %>', '<%= Session["nombre"].ToString() %>')";>
   
    <div  id="user"></div>
    <div  id="admin">
        <uc1:cabeceraAdmin runat="server" ID="cabeceraAdmin" />
    </div>
    <div id="invitado"></div>
    <div class="main">
        <h1>Clientes</h1>
        <br />
        <form id="form1" runat="server">
            <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreamostuweb %>" SelectCommand="SELECT [Nombre], [Correo], [TipoDeUsuario], [UsuarioId] FROM [USUARIOS] WHERE (([TipoDeUsuario] = @TipoDeUsuario) AND ([Activo] = @Activo))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="usuario" Name="TipoDeUsuario" Type="String" />
                        <asp:Parameter DefaultValue="true" Name="Activo" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="UsuarioId" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  PageSize="5">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" HeaderText="ver pedidos del usuario" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="TipoDeUsuario" HeaderText="TipoDeUsuario" SortExpression="TipoDeUsuario" />
                    </Columns>
                    <PagerSettings FirstPageText="Primera" LastPageText="Última" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
                </asp:GridView>
            </div>
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBCreamostuweb %>" SelectCommand="SELECT [Estado], [FkUsuario] FROM [PEDIDOS] WHERE ([FkUsuario] = @FkUsuario)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="FkUsuario" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:BoundField DataField="FkUsuario" HeaderText="FkUsuario" SortExpression="FkUsuario" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </div>
    <div>
        <uc1:Footer runat="server" ID="Footer" />
    </div>
</body>
</html>
