<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdministrador.aspx.cs" Inherits="Vistas.MenuAdministrador" %>

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
            height: 23px;
            width: 659px;
        }
        .auto-style4 {
            width: 659px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inicio"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="hlinkPacientes" runat="server" NavigateUrl="~/OpcionesPacientes.aspx">Pacientes</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="hlinkMedicos" runat="server" NavigateUrl="~/OpcionesMedicos.aspx">Médicos</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="hlinkTurnos" runat="server" NavigateUrl="~/TurnosADM.aspx">Turnos</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:HyperLink ID="hlinkInformes" runat="server" NavigateUrl="~/Informes.aspx">Informes</asp:HyperLink>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="hlinkSalir" runat="server" NavigateUrl="~/Login.aspx">Cerrar sesión</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
