<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuMedico.aspx.cs" Inherits="Vistas.WebForm4" %>

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
            width: 1629px;
        }
        .auto-style3 {
            width: 1629px;
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 1629px;
            height: 23px;
        }
        .auto-style6 {
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
                    <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inicio Médicos"></asp:Label>
                    </td>
                    <td>
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hlTurnosAsignados" runat="server" NavigateUrl="~/TurnosMed.aspx">Ver turnos asignados</asp:HyperLink>
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                    <asp:HyperLink ID="hlinkSalir" runat="server" NavigateUrl="~/Login.aspx">Cerrar sesión</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
