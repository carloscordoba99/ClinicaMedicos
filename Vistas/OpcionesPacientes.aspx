<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcionesPacientes.aspx.cs" Inherits="Vistas.OpcionesPacientes" %>

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
            width: 638px;
        }
        .auto-style3 {
            width: 638px;
            font-weight: bold;
            font-size: larger;
        }
        .auto-style4 {
            width: 638px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    </style>
</head>
<body style="height: 160px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                    <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Larger" Text="Pacientes"></asp:Label>
                    </td>
                    <td>
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkAgregarPaciente" runat="server" NavigateUrl="~/AltaPaciente.aspx">Agregar paciente</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkBajaPaciente" runat="server" NavigateUrl="~/BajaPaciente.aspx">Dar de baja</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlModificarPaciente" runat="server" NavigateUrl="~/ModificarPaciente.aspx">Modificar paciente</asp:HyperLink>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkListaPacientes" runat="server" NavigateUrl="~/ListarPacientes.aspx">Lista de pacientes</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="hlinkAtras" runat="server" NavigateUrl="~/MenuAdministrador.aspx">Atras</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
