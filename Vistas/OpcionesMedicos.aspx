<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcionesMedicos.aspx.cs" Inherits="Vistas.OpcionesMedicos" %>

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
            width: 698px;
        }
    </style>
</head>
<body style="height: 157px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                    <asp:Label ID="lblTitulo" runat="server" Font-Bold="True" Font-Size="Larger" Text="Médicos"></asp:Label>
                    </td>
                    <td>
                    <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkAgregar" runat="server" NavigateUrl="~/AltaMedico.aspx">Agregar médico</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkBaja" runat="server" NavigateUrl="~/BajaMedico.aspx">Dar de baja</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlModificarMedico" runat="server" NavigateUrl="~/ModificarMedico.aspx">Modificar médicos</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkLista" runat="server" NavigateUrl="~/ListarMedicos.aspx">Lista de médicos</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlinkAtras" runat="server" NavigateUrl="~/MenuAdministrador.aspx">Atras</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
