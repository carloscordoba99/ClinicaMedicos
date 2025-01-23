<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaPaciente.aspx.cs" Inherits="Vistas.BajaPaciente" %>

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
            width: 147px;
        }
        .auto-style3 {
            width: 320px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 147px;
            height: 23px;
        }
        .auto-style6 {
            width: 320px;
            height: 23px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            width: 147px;
            height: 30px;
        }
        .auto-style9 {
            width: 320px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAgregarPaciente" runat="server" Font-Bold="True" Text="Baja Paciente"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlAgregarPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx">Agregar Pacientes</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<asp:HyperLink ID="hlModificarPaciente" runat="server" NavigateUrl="~/ModificarPaciente.aspx">Modificar Pacientes</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hlListarPaciente" runat="server" NavigateUrl="~/ListarPacientes.aspx">Listar Pacientes</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">Ingresar Dni Paciente:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtBajaPaciente" runat="server" Width="277px"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="cvDni" runat="server" ControlToValidate="txtBajaPaciente" ForeColor="#FF0066" Operator="GreaterThan" Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="77px" OnClick="btnEliminar_Click1" Font-Bold="True" Font-Italic="True" />
                    </td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="rfvBajaPaciente" runat="server" ControlToValidate="txtBajaPaciente" ErrorMessage="Por favor elige un Dni a filtrar/eliminar." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="EliminarPaciente" runat="server" Visible="False"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblExito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancelar" runat="server" Font-Bold="True" Font-Italic="True" OnClick="btnCancelar_Click" Text="Cancelar" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnConfirmar" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" OnClick="btnConfirmar_Click" Text="Aceptar" Visible="False" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesPacientes.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="grdPacientes" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" PageSize="3" OnPageIndexChanging="grdPacientes_PageIndexChanging">
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
                        <asp:Label ID="lbl_IdProvincia" runat="server" Text='<%# Bind("IdProvincia_Paciente") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblProvincia" runat="server" Text='<%# Bind("Descripcion_Provincia") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Localidad">
                    <EditItemTemplate>
                        <asp:Label ID="lbl_IdLocalidad" runat="server" Text='<%# Bind("IdLocalidad_Paciente") %>'></asp:Label>
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
                        <asp:TextBox ID="txtNacionalidad" runat="server" Text='<%# Bind("Nacionalidad_P") %>'></asp:TextBox>
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
