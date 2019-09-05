﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cronos.Controlador;
using System.Data;
namespace Electron.Views
{
    public partial class Consolas1 : System.Web.UI.Page
    {

        private Compras cp;
        private ComprasHelper cph;
        private Correos cr;
        private DataTable datos;

        // variables estaticas que me acumlan los valores del gridviews
        public static string nombreA;
        public static string Descripcion;
        public static string precio;
        public static int codigo;
        // para capturar el numero d efactura
        public static int factura;

        protected void Page_Load(object sender, EventArgs e)
        {
            string valid = Usuarios.TipoUsu;
            if (valid == null)
            {
                Response.Redirect("LOGING.aspx");

            }
        }

        protected void btn_comprasCosolas_Click(object sender, EventArgs e)
        {
            listarcompras();
            double iva = 13;
            try
            {
                this.cp = new Compras();
                this.cp.fecha_compra = DateTime.Today;
                this.cp.Departamento = "Consolas";
                //this.cp.Articulo = nombreA;
                this.cp.Descripcion = Descripcion;
                this.cp.Precio = precio;
                this.cp.Cantidad = int.Parse(this.txtcantidad.Text);
                this.cp.Codigo_Articulo = codigo;
                this.cp.Descuento = double.Parse(precio) * 0.1;
                this.cp.Subtotal = double.Parse(precio) - this.cp.Descuento;
                this.cp.IVA = iva;
                this.cp.Usuario = Usuarios.Usuario;
                this.cp.Total_pagar = double.Parse(this.txtcantidad.Text) * this.cp.Subtotal;
                this.cp.Opc = 1;
                this.cph = new ComprasHelper(cp);
                this.cph.InsertarCompras();
                EnviarCorreo();
            
                this.lbl_estado.Text = "compra exitosa";

            }
            catch (Exception ex)
            {

                this.lbl_estado.Text = ex.Message;
            }



        }

        protected void GridConsolas_SelectedIndexChanged(object sender, EventArgs e)
        {
            Descripcion = this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[2].Text;
            precio = this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[3].Text;
            nombreA = this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[4].Text;
            codigo = int.Parse(this.GridConsolas.Rows[GridConsolas.SelectedIndex].Cells[5].Text);

        }
        private void listarcompras()
        {

            try
            {
                this.cp = new Compras();
                this.cp.Opc = 1;
                this.cph = new ComprasHelper(cp);
                this.datos = new DataTable();
                this.datos = this.cph.CargarCompras();

                if (datos.Rows.Count >= 0)
                {

                    DataRow fila = datos.Rows[0];
                    factura = int.Parse(fila["Numero_Factura"].ToString());
                }

            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);

            }

        }
        public void EnviarCorreo()
        {
            this.cr = new Correos();
            this.cr.Enviar_Correo(Usuarios.CorreoCompra, "Factura de Tienda Cronos", "Numero de factura '" + factura + "'Fecha de compra: '" + DateTime.Now + "'descripcion:Consola, Precio'" + precio + "' '" + "" + "'" +
                "cantidad:  '" + this.cp.Cantidad + "',Impuesto:13% ya Agregado Descueno:" + this.cp.Descuento + "' Usuario que efectuo la compra:'" + Usuarios.Usuario + "' Total a Pagar: '" + this.cp.Total_pagar + "'");

        }

    }
}