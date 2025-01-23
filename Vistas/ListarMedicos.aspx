<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarMedicoS.aspx.cs" Inherits="Vistas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 308px;
        }
        .auto-style6 {
            width: 189px;
        }
        .auto-style7 {
            width: 259px;
        }
        .auto-style8 {
            width: 40px;
        }
        .auto-style9 {
            width: 222px;
        }
        .auto-style10 {
            width: 156px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 259px;
            height: 23px;
        }
        .auto-style14 {
            width: 189px;
            height: 23px;
        }
        .auto-style15 {
            width: 222px;
            height: 23px;
        }
        .auto-style16 {
            width: 40px;
            height: 23px;
        }
        .auto-style17 {
            width: 308px;
            height: 23px;
        }
        .auto-style18 {
            width: 156px;
            height: 23px;
        }
        .auto-style19 {
            width: 299px;
        }
        .auto-style20 {
            width: 299px;
            height: 23px;
        }
        .auto-style21 {
            width: 246px;
        }
        .auto-style22 {
            width: 246px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="lblListadoMedicos" runat="server" Font-Bold="True" Font-Size="Large" Text="Listado de médicos"></asp:Label>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style21">
                    <asp:HyperLink ID="hlAgregarMedicos" runat="server" NavigateUrl="~/AltaMedico.aspx">Agregar Médicos</asp:HyperLink>
                </td>
                <td class="auto-style7">
                    <asp:HyperLink ID="hlEliminarMedicos" runat="server" NavigateUrl="~/BajaMedico.aspx">Eliminar Médicos</asp:HyperLink>
                </td>
                <td class="auto-style6">
                    <asp:HyperLink ID="hlModificarMedicos" runat="server" NavigateUrl="~/ModificarMedico.aspx">Modificar Médicos</asp:HyperLink>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">Ingrese nombre del médico que desea buscar:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtMedico" runat="server" Width="332px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" Width="80px" OnClick="btnFiltrar_Click" ValidationGroup="grupo1" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" Width="101px" OnClick="btnMostrarTodos_Click" style="height: 26px" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtMedico" ErrorMessage="Por favor ingresar un nombre que filtrar." ForeColor="Red" ValidationGroup="grupo1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                    <br />
                    <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesMedicos.aspx">Atrás</asp:HyperLink>
                </td>
                <td class="auto-style22"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style12"></td>
                <td class="auto-style16"></td>
                <td class="auto-style12"></td>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
            </tr>
        </table>
        <p>
            <asp:GridView ID="grdMedicos" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5" OnPageIndexChanging="grdMedicos_PageIndexChanging">
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
                            <asp:Label ID="lblUsuario" runat="server" Text='<%# Bind("NombreUsuario_M") %>'></asp:Label>
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
        </p>
    </form>
</body>
</html>
