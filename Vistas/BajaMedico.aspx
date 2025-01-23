<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaMedico.aspx.cs" Inherits="Vistas.BajaMedico" %>

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
            height: 23px;
        }
        .auto-style7 {
            width: 280px;
        }
        .auto-style8 {
            height: 23px;
            width: 280px;
        }
        .auto-style9 {
            width: 161px;
        }
        .auto-style10 {
            height: 23px;
            width: 161px;
        }
        .auto-style11 {
            width: 166px;
        }
        .auto-style12 {
            height: 23px;
            width: 166px;
        }
        .auto-style13 {
            height: 25px;
            width: 280px;
        }
        .auto-style15 {
            height: 25px;
            width: 161px;
        }
        .auto-style16 {
            height: 25px;
            width: 166px;
        }
        .auto-style17 {
            height: 25px;
        }
        .auto-style18 {
            width: 264px;
        }
        .auto-style19 {
            height: 25px;
            width: 264px;
        }
        .auto-style20 {
            height: 23px;
            width: 264px;
        }
        .auto-style21 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblAgregarPaciente" runat="server" Font-Bold="True" Text="Baja Médico"></asp:Label>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="lblUsuario" runat="server">[lblUsuario]</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style19">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hlAgregarMedico" runat="server" NavigateUrl="~/AltaMedico.aspx">Agregar Médicos</asp:HyperLink>
                    </td>
                    <td class="auto-style15"><asp:HyperLink ID="lblModificarMedico" runat="server" NavigateUrl="~/ModificarMedico.aspx">Modificar Médicos</asp:HyperLink>
                    </td>
                    <td class="auto-style16">
                        <asp:HyperLink ID="hlListarMedico" runat="server" NavigateUrl="~/ListarMedicos.aspx">Listar Médicos</asp:HyperLink>
                    </td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingresar Legajo Médico:</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtLegajoMedico" runat="server" Width="277px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" ValidationGroup="grupo1" Width="69px" />
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="btnMostrarTodos" runat="server" OnClick="btnMostrarTodos_Click" Text="Mostrar todos" Width="91px" />
                    </td>
                    <td>
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="77px" CssClass="auto-style21" OnClick="btnEliminar_Click" ValidationGroup="grupo1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="rfvLegajo" runat="server" ControlToValidate="txtLegajoMedico" ErrorMessage="Por favor ingrese un legajo a filtrar/Eliminar." ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        <asp:CompareValidator ID="cvLegajo" runat="server" ControlToValidate="txtLegajoMedico" ForeColor="#FF0066" Operator="GreaterThan" Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblExito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style20">
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesMedicos.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="EliminarMedico" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Font-Bold="True" Font-Italic="True" OnClick="btnCancelar_Click" Text="Cancelar" Visible="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnConfirmar" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" OnClick="btnConfirmar_Click" Text="Aceptar" Visible="False" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
            <asp:GridView ID="grdMedicos" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="3" OnPageIndexChanging="grdMedicos_PageIndexChanging">
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
                        <ItemTemplate>
                            <asp:Label ID="lblUsuario0" runat="server" Text='<%# Bind("NombreUsuario_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contraseña">
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
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%# Bind("Nombre_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lblApellido" runat="server" Text='<%# Bind("Apellido_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Sexo">
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
                        <ItemTemplate>
                            <asp:Label ID="lblFechaNacimiento" runat="server" Text='<%# Bind("FechaNacimiento_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dirección">
                        <ItemTemplate>
                            <asp:Label ID="lblDireccion" runat="server" Text='<%# Bind("Direccion_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email_M") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teléfono">
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
                            <asp:Label ID="lblEstado" runat="server" Text='<%# Bind("Estado_M") %>'></asp:Label>
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
