<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="correo.aspx.cs" Inherits="Examen3Carlos_lezcano.correo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 25px;
        }
        .auto-style2 {
            width: 195px;
        }
        .auto-style3 {
            width: 253px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <br>
    <br>
        <br>
    <br>
    <br>
    <br>
        <br>
    <br>
    <br>
    <br>
        <br>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="ingrese su correo"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtcorreo" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcorreo" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">este campo debe de ser email</asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Button ID="btnsiguiente" runat="server" Text="siguiente" OnClick="btnsiguiente_Click" />
                <br />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
