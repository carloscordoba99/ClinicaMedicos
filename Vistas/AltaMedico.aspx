<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaMedico.aspx.cs" Inherits="Vistas.AltaMedico" %>

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
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 25px;
        }
        .auto-style5 {
            width: 154px;
        }
        .auto-style6 {
            height: 23px;
            width: 154px;
        }
        .auto-style7 {
            height: 26px;
            width: 154px;
        }
        .auto-style8 {
            height: 25px;
            width: 154px;
        }
        .auto-style9 {
            height: 46px;
        }
        .auto-style10 {
            width: 154px;
            height: 46px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style12 {
            width: 154px;
            height: 30px;
        }
        .auto-style13 {
            width: 85px;
        }
        .auto-style14 {
            height: 23px;
            width: 85px;
        }
        .auto-style15 {
            height: 30px;
            width: 85px;
        }
        .auto-style16 {
            height: 25px;
            width: 85px;
        }
        .auto-style17 {
            height: 26px;
            width: 85px;
        }
        .auto-style18 {
            height: 46px;
            width: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lblAgregarMedico" runat="server" Font-Bold="True" Text="Agregar Medico"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    <asp:HyperLink ID="hlBajaMedico" runat="server" NavigateUrl="~/BajaMedico.aspx">Baja Médicos</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="hlModificarMedico" runat="server" NavigateUrl="~/ModificarMedico.aspx">Modificar Medicos</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="hlListarMedico" runat="server" NavigateUrl="~/ListarMedicos.aspx">Listar Médicos</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6">Legajo:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtLegajo" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revlegajo" runat="server" ControlToValidate="txtLegajo" ValidationExpression="^\d+$" ForeColor="Red">Ingrese un legajo</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2">
                    <asp:RangeValidator ID="rvLegajo" runat="server" ControlToValidate="txtLegajo" MaximumValue="50000" MinimumValue="0" Type="Integer">Legajo inválido.</asp:RangeValidator>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">Nombre:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvnombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red">Ingrese un nombre</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style11"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Apellido:<br />
                    <br />
                    DNI:</td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvapellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red">Ingrese un apellido</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvdni" runat="server" ControlToValidate="txtDNI" ForeColor="Red">Ingrese un DNI</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvDni" runat="server" ControlToValidate="txtDNI" ErrorMessage="RangeValidator" MaximumValue="50000000" MinimumValue="0" Type="Integer">Dni Inválido.</asp:RangeValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">Sexo:</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rbMyF" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="1">Masculino</asp:ListItem>
                        <asp:ListItem Value="2">Femenino</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="rbMyF" ForeColor="Red">Seleccionar Género.</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lblbutton" runat="server"></asp:Label>
                    </td>
                <td class="auto-style4"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Nacionalidad:</td>
                <td>
                    <asp:DropDownList ID="ddlNacionalidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNacionalidad_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                        <asp:Label ID="lblProvincia" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                    </td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">Fecha Nacimiento:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                    <br />
                    <asp:Calendar ID="Calendarfecha" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendarfecha_SelectionChanged" Width="220px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
                <td class="auto-style11">
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvAño" runat="server" ControlToValidate="txtFecha" ForeColor="Red">Ingresar fecha.</asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style11"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">Direccion:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvdireccion" runat="server" ControlToValidate="txtDireccion" ForeColor="Red">Ingrese una dirección</asp:RequiredFieldValidator>
                &nbsp;
                        </td>
                <td class="auto-style4">
&nbsp;&nbsp;</td>
                <td class="auto-style4"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7">Provincia:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7">Localidad:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlLocalidades" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7">Email:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                &nbsp;
                        <asp:RegularExpressionValidator ID="rvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red">Completar email.</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">Telefono:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTelefono" runat="server" TextMode="Phone"></asp:TextBox>
                &nbsp;
                        <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ForeColor="Red">Completar teléfono.</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvTelefono" runat="server" ControlToValidate="txtTelefono" ForeColor="#FF0066" MaximumValue="11999999" MinimumValue="10999999" Type="Integer">Telefono Invalido.</asp:RangeValidator>
                </td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Especialidad:</td>
                <td>
                    <asp:DropDownList ID="ddlEspecialidad" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblEspecialidad" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Dias de atención:</td>
                <td>&nbsp;<asp:RadioButton ID="rbLMM" runat="server" Text="Lunes-Martes-Miercoles" />
                    <br />
                    &nbsp;<asp:RadioButton ID="rbJVS" runat="server" Text="Jueves-Viernes-Sabados" />
                </td>
                <td>
                    <asp:Label ID="lblDia" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">Horario de atención:</td>
                <td class="auto-style9">&nbsp;<asp:RadioButton ID="rb814" runat="server" Text="8:00 hs - 14:00 hs" />
                    <br />
                    &nbsp;<asp:RadioButton ID="rb1420" runat="server" Text="14:00 hs - 20:00 hs" />
                </td>
                <td class="auto-style9">
                    <asp:Label ID="lblHorario" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6">Usuario:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                &nbsp;
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ForeColor="Red">Completar usuario.</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblUsuarioRepetido" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Contraseña:</td>
                <td>
                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ForeColor="Red">Completar contraseña.</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style5">Repetir contraseña:</td>
                <td>
                    <asp:TextBox ID="txtRepetirContra" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;
                        <asp:RequiredFieldValidator ID="rfvContraseña2" runat="server" ControlToValidate="txtRepetirContra" ForeColor="Red">Repetir contraseña.</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:CompareValidator ID="validarIgualdad" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContra" ForeColor="Red">Las contraseñas no coinciden</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblExito" runat="server"></asp:Label>
                    <br />
                    <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/OpcionesMedicos.aspx">Atrás</asp:HyperLink>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
