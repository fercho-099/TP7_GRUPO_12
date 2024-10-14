<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursalesSeleccionados.aspx.cs" Inherits="SeleccionarSucursales.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:HyperLink ID="LnkSeleccionSucursales" runat="server" NavigateUrl="~/SeleccionarSucursales.aspx">Seleccion Sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="LnkListadoSucursalesSeleccionadas" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado Sucursales Seleccionadas</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="LnkAgregar" runat="server" NavigateUrl="~/AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
        </p>
        <div>
            <asp:Label ID="lbl_mostrarsucursalesseleccionadas" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Mostrar sucursales seleccionadas"></asp:Label>
            <br />
            <br />
        </div>

        <asp:GridView ID="gvMostrar" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="IdSucursal" HeaderText="ID Sucursal" />
                <asp:BoundField DataField="NombreSucursal" HeaderText="Nombre Sucursal" />
                <asp:BoundField DataField="DescripcionSucursal" HeaderText="Descripción" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
