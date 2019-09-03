<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="edad.aspx.cs" Inherits="Examen3Carlos_lezcano.edad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 113px;
        }
        .auto-style2 {
            width: 134px;
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
    <table class="w-100">
        <tr>
            <td class="auto-style2">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Su edad "></asp:Label>
                <br />
                <asp:TextBox ID="txtedad" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtedad" ErrorMessage="RangeValidator" MaximumValue="50" MinimumValue="18" Type="Integer">tiene que ser una edad mayor a 18 y menor  que 50</asp:RangeValidator>
                <br />
                <br />
                <asp:Button ID="btnsigueinte" runat="server" Text="Siguiente" OnClick="btnsigueinte_Click" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
