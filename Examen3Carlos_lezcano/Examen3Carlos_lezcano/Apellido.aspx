<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="Apellido.aspx.cs" Inherits="Examen3Carlos_lezcano.Apellido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 30px;
        }
        .auto-style2 {
            width: 143px;
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
    <br>
    <br>
    <br>
        <br>

    <table class="w-100">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Ingrese su apellido"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtapellido" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtapellido" ErrorMessage="RequiredFieldValidator">Este campo es requerido</asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btningresar" runat="server" Text="Siguente" OnClick="btningresar_Click" />
                <br />
                <br />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
