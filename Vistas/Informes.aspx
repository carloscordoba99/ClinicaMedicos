<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informes.aspx.cs" Inherits="Vistas.Informes" %>

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
            width: 511px;
        }
        .auto-style4 {
            height: 23px;
            width: 511px;
        }
        .auto-style5 {
            width: 278px;
        }
        .auto-style6 {
            height: 23px;
            width: 278px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Larger" Text="Informes"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">Presentes y ausentes en el mes de: </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlMeses" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMeses_SelectedIndexChanged">
                        <asp:ListItem>-- Seleccione un mes--</asp:ListItem>
                        <asp:ListItem Value="01">Enero</asp:ListItem>
                        <asp:ListItem Value="02">Febrero</asp:ListItem>
                        <asp:ListItem Value="03">Marzo</asp:ListItem>
                        <asp:ListItem Value="04">Abril</asp:ListItem>
                        <asp:ListItem Value="05">Mayo</asp:ListItem>
                        <asp:ListItem Value="06">Junio</asp:ListItem>
                        <asp:ListItem Value="07">Julio</asp:ListItem>
                        <asp:ListItem Value="08">Agosto</asp:ListItem>
                        <asp:ListItem Value="09">Septiembre</asp:ListItem>
                        <asp:ListItem Value="10">Octubre</asp:ListItem>
                        <asp:ListItem Value="11">Noviembre</asp:ListItem>
                        <asp:ListItem Value="12">Diciembre</asp:ListItem>
                    </asp:DropDownList>
                    <asp:GridView ID="grdPresenAusen" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">Medicos especializados en:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlEspecialidades" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEspecialidades_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:GridView ID="grdMedicos" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">Turnos por medico:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTurnosMes" runat="server" ValidationGroup="grupo 1"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTurnosMes" ErrorMessage="*Debe ingresar un numero*" ValidationExpression="^[0-9]*$" ValidationGroup="grupo 1"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvlegajomedico" runat="server" ControlToValidate="txtTurnosMes" ForeColor="Red" SetFocusOnError="True" ValidationGroup="grupo 1">*Debe Ingresar un Legajo*</asp:RequiredFieldValidator>
                    <asp:Button ID="btnMedicoXLegajo" runat="server" OnClick="btnMedicoXLegajo_Click" Text="Buscar Por Legajo" ValidationGroup="grupo 1" />
                    <asp:GridView ID="grdTurnoMedico" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Pacientes atendido en la fecha de HOY:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblHoyTurnos" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Informe de Pacientes por Edad y Género<br />
                </td>
                <td class="auto-style4">
                    <asp:GridView ID="grdPEG" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:HyperLink ID="hyperLinkVolver" runat="server" NavigateUrl="~/MenuAdministrador.aspx">Volver</asp:HyperLink>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
