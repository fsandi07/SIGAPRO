<%@ Page Title="" Language="C#" MasterPageFile="~/inicio.Master" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="Examen3Carlos_lezcano.principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 132px;
        }
        .auto-style4 {
            width: 134px;
        }
        .auto-style5 {
            width: 119px;
        }
        .auto-style6 {
            width: 83px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td class="auto-style6">
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
               <h1><asp:Label ID="Label1" runat="server" CssClass="btn-outline-dark" ForeColor="Black" Text="Bienvenido"></asp:Label></h1>
                <br />
                <br />
                <br />
                <asp:Button ID="btningreso" runat="server" Text="Realizar Encuesta" OnClick="btningreso_Click" />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
