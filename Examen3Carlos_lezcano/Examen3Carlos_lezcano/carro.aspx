<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="carro.aspx.cs" Inherits="Examen3Carlos_lezcano.carro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 92%
        }
        .auto-style3 {
            width: 192px;
        }
        .auto-style4 {
            width: 181px;
        }
        .auto-style5 {
            width: 304px;
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
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <br />
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Tiene Carro?"></asp:Label>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radiosi" runat="server" Checked="True" GroupName="carro" Text="Si" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radiono" runat="server" GroupName="carro" Text="No" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsiguiente" runat="server" Text="Siguiente" OnClick="btnsiguiente_Click" />
                <br />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
