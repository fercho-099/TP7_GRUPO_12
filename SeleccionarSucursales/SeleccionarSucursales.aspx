<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="SeleccionarSucursales.ListadoSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 418px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hl_mostrarsucursales0" runat="server" NavigateUrl="~/ListadoSucursalesSeleccionados.aspx">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lbl_listadosucursales" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Listado de sucursales "></asp:Label>
            <br />

            <br />
            <asp:Label ID="lbl_busquedapornombresucursal" runat="server" Text="Busqueda por nombre de sucursal:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_nombresucursalabuscar" runat="server" Width="163px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="btn_buscar" runat="server" Text="Buscar" />
            <br />
            <br />
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" Text='<%# bind("DescripcionProvincia") %>' />
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                                <td>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id_Sucursal" DataSourceID="SqlDataSource1" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color:#FFF8DC;">
                        <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                        <br />
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" ImageUrl='<%# Bind("URL_Imagen_Sucursal") %>' Width="250px" />
                        <br />
                        <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>'></asp:Label>
                        <br />
                        <asp:Button ID="BtnSeleccionar" runat="server" Text="Seleccionar" CommandArgument='<%# ("Id_Sucursal")+ ";"+Eval("NombreSucursal")+";"+Eval("DescripcionSucursal") %>' />
                        <br />
                        </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Id_Sucursal:
                        <asp:Label ID="Id_SucursalLabel1" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                        <br />NombreSucursal:
                        <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                        <br />DescripcionSucursal:
                        <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                        <br />URL_Imagen_Sucursal:
                        <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No se han devuelto datos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">NombreSucursal:
                        <asp:TextBox ID="NombreSucursalTextBox0" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                        <br />DescripcionSucursal:
                        <asp:TextBox ID="DescripcionSucursalTextBox0" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                        <br />URL_Imagen_Sucursal:
                        <asp:TextBox ID="URL_Imagen_SucursalTextBox0" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton0" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                        <asp:Label ID="NombreSucursalLabel0" runat="server" Text='<%# Eval("NombreSucursal") %>'></asp:Label>
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="250px" ImageUrl='<%# Bind("URL_Imagen_Sucursal") %>' Width="250px" />
                        <br />
                        <asp:Label ID="DescripcionSucursalLabel0" runat="server" Text='<%# Eval("DescripcionSucursal") %>'></asp:Label>
                        <br />
                        <asp:Button ID="BtnSeleccionar0" runat="server" Text="Seleccionar" CommandArgument='<%# ("Id_Sucursal")+ ";"+Eval("NombreSucursal")+";"+Eval("DescripcionSucursal") %>' CommandName="eventoSeleccionar" OnCommand="BtnSeleccionar_Command1" />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Id_Sucursal:
                        <asp:Label ID="Id_SucursalLabel" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                        <br />NombreSucursal:
                        <asp:Label ID="NombreSucursalLabel1" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                        <br />DescripcionSucursal:
                        <asp:Label ID="DescripcionSucursalLabel1" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                        <br />URL_Imagen_Sucursal:
                        <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
                                </td>
                            </tr>
                        </table>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString %>" SelectCommand="SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
            <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString2 %>" ProviderName="<%$ ConnectionStrings:BDSucursalesConnectionString2.ProviderName %>" SelectCommand="SELECT [DescripcionProvincia], [Id_Provincia] FROM [Provincia]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
