<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="Vistas.ModificarPaciente" %>

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
            width: 283px;
        }
        .auto-style3 {
            width: 411px;
        }
        .auto-style4 {
            width: 293px;
        }
        .auto-style5 {
            width: 283px;
            height: 23px;
        }
        .auto-style6 {
            width: 411px;
            height: 23px;
        }
        .auto-style7 {
            width: 293px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Text="Modificar Pacientes"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="lblUsuario" runat="server">[lblUsuario]</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlAgregarPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx">Agregar paciente</asp:HyperLink>
                    </td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlEliminarPaciente" runat="server" NavigateUrl="~/BajaPaciente.aspx">Eliminar paciente</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlListarPacientes" runat="server" NavigateUrl="~/ListarPacientes.aspx">Listar pacientes</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingrese DNI para filtrar:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDniPaciente" runat="server" Width="387px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" ValidationGroup="grupo1" Width="74px" />
                    </td>
                    <td>
                        <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar todos" Width="91px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDniPaciente" ErrorMessage="Por favor introducir un DNI." ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblExito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesPacientes.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="grdPacientes" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnRowCancelingEdit="grdPacientes_RowCancelingEdit" OnRowEditing="grdPacientes_RowEditing" OnRowUpdating="grdPacientes_RowUpdating" AllowPaging="True" PageSize="5" OnPageIndexChanging="grdPacientes_PageIndexChanging">
            <Columns>
                <asp:TemplateField HeaderText="DNI">
                    <EditItemTemplate>
                        <asp:Label ID="lbl_Dni" runat="server" Text='<%# Bind("DniPaciente_P") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDNI" runat="server" Text='<%# Bind("DniPaciente_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Provincia">
                    <EditItemTemplate>
                        <asp:Label ID="lbl_IdProvincia" runat="server" Text='<%# Bind("Descripcion_Provincia") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblProvincia" runat="server" Text='<%# Bind("Descripcion_Provincia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Localidad">
                    <EditItemTemplate>
                        <asp:Label ID="lbl_IdLocalidad" runat="server" Text='<%# Bind("Descripcion_L") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblLocalidad" runat="server" Text='<%# Bind("Descripcion_L") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nombre">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNombre" runat="server" Text='<%# Bind("Nombre_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblNombre" runat="server" Text='<%# Bind("Nombre_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Apellido">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtApellido" runat="server" Text='<%# Bind("Apellido_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblApellido" runat="server" Text='<%# Bind("Apellido_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sexo">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtSexo" runat="server" Text='<%# Bind("Sexo_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblSexo" runat="server" Text='<%# Bind("Sexo_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Nacionalidad">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNacionalidad" runat="server" Text='<%# Bind("Descripcion_Nacionalidad") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblNacionalidad" runat="server" Text='<%# Bind("Descripcion_Nacionalidad") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha de Nacimiento">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Dirección">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDireccion" runat="server" Text='<%# Bind("Direccion_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDireccion" runat="server" Text='<%# Bind("Direccion_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Teléfono">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTelefono" runat="server" Text='<%# Bind("Telefono_P") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblTelefono" runat="server" Text='<%# Bind("Telefono_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Estado">
                    <EditItemTemplate>
                        <asp:Label ID="lbl_Estado" runat="server" Text='<%# Bind("Estado_P") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEstado" runat="server" Text='<%# Bind("Estado_P") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </form>
</body>
</html>
