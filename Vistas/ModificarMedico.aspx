<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarMedico.aspx.cs" Inherits="Vistas.ModificarMedico" %>

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
            width: 253px;
        }
        .auto-style3 {
            width: 376px;
        }
        .auto-style4 {
            width: 262px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblTítulo" runat="server" Font-Bold="True" Text="Modifcar Médicos"></asp:Label>
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
                        <asp:HyperLink ID="hlAgregarMedico" runat="server" NavigateUrl="~/AltaMedico.aspx">Agregar Médicos</asp:HyperLink>
                    </td>
                    <td class="auto-style4">
                    <asp:HyperLink ID="hlEliminarMedicos" runat="server" NavigateUrl="~/BajaMedico.aspx">Eliminar Médicos</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlListarMedico" runat="server" NavigateUrl="~/ListarMedicos.aspx">Listar Médicos</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
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
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingrese legajo para fitlrar:&nbsp;</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtLegajoMedico" runat="server" Width="352px"></asp:TextBox>
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
                        <asp:RequiredFieldValidator ID="rfvLegajo" runat="server" ControlToValidate="txtLegajoMedico" ErrorMessage="Por favor introducir un legajo." ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblEstado" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesMedicos.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
            <asp:GridView ID="grdMedicos" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" AutoGenerateEditButton="True" OnRowCancelingEdit="grdMedicos_RowCancelingEdit" OnRowEditing="grdMedicos_RowEditing" OnRowUpdating="grdMedicos_RowUpdating" OnPageIndexChanging="grdMedicos_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Legajo">
                        <ItemTemplate>
                            <asp:Label ID="lblLegajo" runat="server" Text='<%# Bind("Legajo_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Provincia">
                        <ItemTemplate>
                            <asp:Label ID="lblProvincia" runat="server" Text='<%# Bind("IdProvincia_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Localidad">
                        <ItemTemplate>
                            <asp:Label ID="lblLocalidad" runat="server" Text='<%# Bind("IdLocalidad_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Especialidad">
                        <ItemTemplate>
                            <asp:Label ID="lblEspecialidad" runat="server" Text='<%# Bind("IdEspecialidad_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre de usuario">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNombreUsuario" runat="server" Text='<%# Bind("NombreUsuario_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblUsuario0" runat="server" Text='<%# Bind("NombreUsuario_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contraseña">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPass" runat="server" Text='<%# Bind("PassUsuario_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblPass" runat="server" Text='<%# Bind("PassUsuario_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DNI">
                        <ItemTemplate>
                            <asp:Label ID="lblDNI" runat="server" Text='<%# Bind("Dni_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNombre" runat="server" Text='<%# Bind("Nombre_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%# Bind("Nombre_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtApellido" runat="server" Text='<%# Bind("Apellido_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblApellido" runat="server" Text='<%# Bind("Apellido_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sexo">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSexo" runat="server" Text='<%# Bind("Sexo_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblSexo" runat="server" Text='<%# Bind("Sexo_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nacionalidad">
                        <ItemTemplate>
                            <asp:Label ID="lblNacionalidad" runat="server" Text='<%# Bind("Nacionalidad_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha de nacimiento">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblFechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dirección">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDireccion" runat="server" Text='<%# Bind("Direccion_M") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblDireccion" runat="server" Text='<%# Bind("Direccion_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email_M") %>'></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese un email válido." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo2"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teléfono">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTelefono" runat="server" Text='<%# Bind("Telefono_M") %>'></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese un teléfono válido." ForeColor="Red" ValidationExpression="/^(?:(?:00)?549?)?0?(?:11|[2368]\d)(?:(?=\d{0,2}15)\d{2})??\d{8}$/" ValidationGroup="grupo3"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblTelefono" runat="server" Text='<%# Bind("Telefono_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Días laborables">
                        <ItemTemplate>
                            <asp:Label ID="lblDiaID" runat="server" Text='<%# Bind("IdDia_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Horario">
                        <ItemTemplate>
                            <asp:Label ID="lblHorarioID" runat="server" Text='<%# Bind("IdHorario_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Estado">
                        <ItemTemplate>
                            <asp:Label ID="lblEstado0" runat="server" Text='<%# Bind("Estado_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
    </form>
</body>
</html>
