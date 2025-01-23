<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="Vistas.AltaPaciente" %>

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
            width: 274px;
        }
        .auto-style8 {
            height: 23px;
            width: 274px;
        }
        .auto-style13 {
            height: 27px;
            width: 274px;
        }
        .auto-style15 {
            height: 27px;
        }
        .auto-style16 {
            width: 274px;
            height: 26px;
        }
        .auto-style18 {
            height: 26px;
        }
        .auto-style19 {
            width: 169px;
        }
        .auto-style20 {
            height: 23px;
            width: 169px;
        }
        .auto-style22 {
            width: 169px;
            height: 26px;
        }
        .auto-style23 {
            height: 27px;
            width: 169px;
        }
        .auto-style24 {
            width: 532px;
        }
        .auto-style25 {
            height: 23px;
            width: 532px;
        }
        .auto-style27 {
            height: 26px;
            width: 532px;
        }
        .auto-style28 {
            height: 27px;
            width: 532px;
        }
        .auto-style29 {
            width: 274px;
            height: 17px;
        }
        .auto-style30 {
            width: 169px;
            height: 17px;
        }
        .auto-style31 {
            width: 532px;
            height: 17px;
        }
        .auto-style32 {
            height: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblAgregarPaciente" runat="server" Font-Bold="True" Text="Agregar Paciente"></asp:Label>
                    </td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style20">
                        <asp:HyperLink ID="hlBajaPaciente" runat="server" NavigateUrl="~/BajaPaciente.aspx">Baja Pacientes</asp:HyperLink>
                    </td>
                    <td class="auto-style25">
                        <asp:HyperLink ID="hlModificarPaciente" runat="server" NavigateUrl="~/ModificarPaciente.aspx">Modificar Pacientes</asp:HyperLink>
                    </td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlListarPaciente" runat="server" NavigateUrl="~/ListarPacientes.aspx">Listar Pacientes</asp:HyperLink>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style25"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style19">Dni:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvDni" runat="server" ControlToValidate="txtDni" ErrorMessage="RangeValidator" MaximumValue="50000000" MinimumValue="0" Type="Integer">Dni Invalido.</asp:RangeValidator>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ForeColor="Red">Dni Inválido.</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style20">Nombre:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red">Nombre Inválido.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style22">Apellido:</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red">Apellido Inválido.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style19">&nbsp; Sexo:</td>
                    <td class="auto-style24">
                        <asp:RadioButton ID="rbMasculino" runat="server" Text="Masculino" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="rbFemenino" runat="server" Text="Femenino" />
                    </td>
                    <td>
                        <asp:Label ID="lblbutton" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style19">Nacionalidad:</td>
                    <td class="auto-style24">
                        <asp:DropDownList ID="ddlNacionalidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNacionalidad_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style30">Fecha de Nacimiento:</td>
                    <td class="auto-style31">
                        <br />
                        <asp:TextBox ID="Fechaelegida" runat="server"></asp:TextBox>
                        <asp:Calendar ID="CalendarioPaciente" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" FirstDayOfWeek="Monday" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="CalendarioPaciente_SelectionChanged" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <DayStyle BorderColor="#6699FF" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
&nbsp;</td>
                    <td class="auto-style32">
&nbsp;
                        &nbsp;
                        <asp:RequiredFieldValidator ID="rfvAño" runat="server" ControlToValidate="Fechaelegida" ForeColor="Red" Font-Bold="True">Ingresar fecha.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style32"></td>
                    <td class="auto-style32"></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style20">Provincia:</td>
                    <td class="auto-style25">
                        <asp:DropDownList ID="ddlProvincia" runat="server" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style2">
                        <asp:Label ID="lblProvincia" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style22">Localidad:</td>
                    <td class="auto-style27">
                        <asp:DropDownList ID="ddlLocalidad" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">
                    </td>
                    <td class="auto-style18"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style23">Dirección:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ForeColor="Red">Completar direccion.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style15"></td>
                    <td class="auto-style15"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style19">Email:</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="rvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red">Completar email.</asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style20">Teléfono:</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvTelefono" runat="server" ControlToValidate="txtTelefono" ForeColor="#FF0066" MaximumValue="11999999" MinimumValue="10999999" Type="Integer">Telefono Invalido.</asp:RangeValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ForeColor="Red">Completar teléfono.</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblExito" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                        <br />
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesPacientes.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style20"></td>
                    <td class="auto-style25">
                        <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" Width="91px" />
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
