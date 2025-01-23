<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Clinica Salud - Inicio de sesión</title>
    <link rel="stylesheet" type="text/css" href="estilos.css" />
<link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet"/>    
<style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 140px;
        }
        .auto-style4 {
            height: 23px;
            width: 140px;
        }
    </style>
</head>
<body>
    <form class="flex-container" id="form1" runat="server">
        <div class="flex-item">
            <table class="auto-style1">
                <tr class="flex-item">
                    <td class="titulo-inicio" colspan="2">Inicio de sesión<br /></td>
                </tr>
                <tr>
                    <td class="auto-style4">Usuario:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblError" runat="server" Text="Usuario o contraseña incorrecto" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
            <div class="flex-item">
                <p class="flex-item__p">
                    <asp:Button ID="btnSesion" runat="server" OnClick="Button1_Click" Text="Iniciar Sesión" />
                </p>
            </div>
    </form>
</body>
</html>
