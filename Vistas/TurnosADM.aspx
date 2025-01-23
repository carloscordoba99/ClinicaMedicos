<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosADM.aspx.cs" Inherits="Vistas.WebForm3" %>

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
            height: 24px;
        }
        .auto-style4 {
            height: 24px;
            width: 151px;
        }
        .auto-style5 {
            width: 151px;
        }
        .auto-style6 {
            height: 23px;
            width: 151px;
        }
        .auto-style7 {
            width: 151px;
            height: 194px;
        }
        .auto-style8 {
            height: 194px;
        }
        .auto-style9 {
            width: 151px;
            height: 30px;
        }
        .auto-style10 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblTituloTurnos0" runat="server" Font-Bold="True" Text="Asignación de turnos" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Especialidad:</td>
                <td class="auto-style10">
                    <asp:DropDownList ID="ddlEspecialidad" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEspecialidad_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEspecialidad" ForeColor="Red">Debe elegir una especialidad</asp:RequiredFieldValidator>
                    <asp:Label ID="lblchau" runat="server"></asp:Label>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style5">Médico:</td>
                <td>
                    <asp:DropDownList ID="ddlMedico" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMedico_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvMedico" runat="server" ControlToValidate="ddlMedico" ForeColor="Red">Debe elegir un médico</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Dia:</td>
                <td class="auto-style8">
                    <asp:Calendar ID="calendarioTurnos" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="16px" Width="189px" OnSelectionChanged="calendarioTurnos_SelectionChanged" OnDayRender="calendarioTurnos_DayRender">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="lblErrorCalendario" runat="server" ForeColor="Red" Text="El medico no trabaja ese dia" Visible="False"></asp:Label>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style6">Horario:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlHorario" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvHorario" runat="server" ControlToValidate="ddlHorario" ForeColor="Red">Debe elegir un horario</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5">Paciente:</td>
                <td>
                    <asp:DropDownList ID="ddlPaciente" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvPaciente" runat="server" ControlToValidate="ddlPaciente" ForeColor="Red">Debe elegir un paciente</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Label ID="lblTurnoAsignado" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="hyperLinkVolver" runat="server" NavigateUrl="~/MenuAdministrador.aspx">Volver</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
