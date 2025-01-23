<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosMed.aspx.cs" Inherits="Vistas.TurnosMed" %>

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
            width: 184px;
        }
        .auto-style4 {
            width: 184px;
        }
        .auto-style5 {
            height: 23px;
            width: 335px;
        }
        .auto-style6 {
            width: 335px;
        }
        .auto-style7 {
            height: 23px;
            width: 52px;
        }
        .auto-style8 {
            width: 52px;
        }
        .auto-style9 {
            margin-bottom: 0px;
        }
        .auto-style10 {
            height: 23px;
            width: 136px;
        }
        .auto-style11 {
            width: 136px;
        }
        .auto-style12 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="height: 151px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblVerTurnos" runat="server" Text="Turnos Asignados"></asp:Label>
                    </td>
                    <td class="auto-style10"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2">
                        <asp:Label ID="lblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="refIdTurno" runat="server" ControlToValidate="txtTurno" ErrorMessage="*Ingrese un ID*" ValidationGroup="grupo 1"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:RegularExpressionValidator ID="regTurnoId" runat="server" ControlToValidate="txtTurno" ErrorMessage="*Solo Numeros*" ValidationExpression="^[0-9]*$" ValidationGroup="grupo 1"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Ingrese ID del turno:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtTurno" runat="server" CssClass="auto-style9" OnTextChanged="TextBox1_TextChanged1" ValidationGroup="grupo 1"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click1" ValidationGroup="grupo 1" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnTodo" runat="server" CssClass="auto-style12" Text="Mostrar Todo" OnClick="btnTodo_Click1" />
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Seleccione el turno que desea agregar una observación:</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ddlTurnos" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtObservacion" runat="server" Height="22px" MaxLength="150" Width="189px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" ValidationGroup="grupo3" />
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlAtras" runat="server" NavigateUrl="~/MenuMedico.aspx">Atrás</asp:HyperLink>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvObservacion" runat="server" ControlToValidate="txtObservacion" ErrorMessage="Por favor, ingrese una observación." ForeColor="Red" ValidationGroup="grupo3"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:Label ID="lblExito" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Label ID="lblError" runat="server" Text="No hay turnos" Visible="False"></asp:Label>
        <asp:GridView ID="grdTurnos" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnPageIndexChanging="grdTurnos_PageIndexChanging" PageSize="3">
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
