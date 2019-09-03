<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="fecha.aspx.cs" Inherits="Examen3Carlos_lezcano.fecha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 95%;
            height: 56px;
        }
        .auto-style2 {
            width: 421px;
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
    <br>
    <br>
    <br>
        <br>
    <asp:Label ID="lblerror" runat="server"></asp:Label>
    <br>
    <br>
    <br>
        <br>
    <table cellpadding="0" class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="selecione una fecha de nacimineto" ForeColor="Black"></asp:Label>
                <br />
                <asp:TextBox ID="txtfecha" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfecha" ErrorMessage="RequiredFieldValidator">Este debe indicar una fecha</asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="btnsiguiente" runat="server" Text="Siguiente" OnClick="btnsiguiente_Click" />
                <br />
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
