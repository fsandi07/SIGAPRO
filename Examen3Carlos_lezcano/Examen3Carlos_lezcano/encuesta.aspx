<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="encuesta.aspx.cs" Inherits="Examen3Carlos_lezcano.encuesta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 138px;
        }
        .auto-style2 {
            width: 78px;
        }
        .auto-style3 {
            width: 100%;
            height: 0px;
        }
        .auto-style6 {
            width: 340px;
        }
        .auto-style7 {
            width: 90px;
        }
        .auto-style8 {
            width: 155px;
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
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br>
    <table class="w-100">
        <tr>
            <td class="auto-style8">
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
                <br />
                  <br />
                <br />
                <br />
                <br />
                <br />
    <asp:Button ID="btnreporte" runat="server" OnClick="btnreporte_Click" Text="Ver reporte." />
                <br />
                <br />
            
                <asp:Label ID="Label1" runat="server" Text="Cantidad de encuestas "></asp:Label>
                <br />
                <asp:TextBox ID="txtencuestas" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
    <asp:Label ID="lblcarrossi" runat="server" Text="personas con carro"></asp:Label>
                <br />
                <asp:TextBox ID="txtcarrossi" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
    <asp:Label ID="lblcarrosno" runat="server" Text="personas sin carro"></asp:Label>
                <br />
                <asp:TextBox ID="txtcarrono" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnregreso" runat="server" OnClick="btnregreso_Click" Text="Realizar de nuevo la encuesta" />
                <br />
            </td>
            <td class="auto-style7"> 
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
                <asp:Label ID="lblmostrarencuesta" runat="server" ForeColor="Black"></asp:Label>
                <br />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <table class="auto-style3">
        <tr>
            <td class="auto-style1">
             <h2> &nbsp;</h2>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
