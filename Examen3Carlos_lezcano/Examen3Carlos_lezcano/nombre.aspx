<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="nombre.aspx.cs" Inherits="Examen3Carlos_lezcano.nombre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
        .auto-style2 {
            width: 189px;
        }
        .auto-style3 {
            width: 232px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Numero de Encuesta"></asp:Label>
&nbsp;<asp:Label ID="lblnumeroencuesta" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Ingrese su Nombre"></asp:Label>
                <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnombre" ErrorMessage="RequiredFieldValidator">Este campo es requerido</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btnsiguiente" runat="server" Text="Siguente" OnClick="btnsiguiente_Click" />
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:FileUpload ID="Filexml" runat="server" />
            </td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
