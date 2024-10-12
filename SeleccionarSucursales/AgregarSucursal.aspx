<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs" Inherits="SeleccionarSucursales.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="Titulo">Agregar Sucursal</h1>

            <br />
            <br />
            <asp:Label ID="LbNombre" runat="server" Text="Nombre Sucursal"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LbDescripcion" runat="server" Text="Descripcion de Sucursal"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtDescripcion" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LbProvincia" runat="server" Text="Seleccione la Provincia"></asp:Label>
&nbsp;&nbsp;&nbsp;
&nbsp;<asp:DropDownList ID="DdlProvincias" runat="server" DataSourceID="SqlDataSource1" DataTextField="DescripcionProvincia" DataValueField="Id_Provincia">
                <asp:ListItem>Buenos Aires</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="LbUrlImagen" runat="server" Text="URL Imagen"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Tximagen" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnAgregar" runat="server" OnClick="BtnAgregar_Click" Text="Agregar Sucursal" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionProvincia2 %>" ProviderName="<%$ ConnectionStrings:BDSucursalesConnectionProvincia2.ProviderName %>" SelectCommand="SELECT * FROM [Provincia] ORDER BY [DescripcionProvincia]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
