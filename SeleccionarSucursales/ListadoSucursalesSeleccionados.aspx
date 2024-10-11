<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursalesSeleccionados.aspx.cs" Inherits="SeleccionarSucursales.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>
        TP7_GRUPO_12</p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <p>
            <asp:HyperLink ID="LnkSeleccionSucursales" runat="server" NavigateUrl="~/SeleccionSucursales.aspx">Seleccion Sucursales</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="LnkListadoSucursalesSeleccionadas" runat="server" NavigateUrl="~/ListadoSucursales.aspx">Listado Sucursales Seleccionadas</asp:HyperLink>
        </p>
        <div>
        </div>
    </form>
</body>
</html>
