﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cronos.Controlador
{
    public class Articulos
    {
        // declaracion de la opcion
        public int opc;
        // atroibutos para el ingreso de datos en el sistema.
        public string nombre_consola;
        public byte[] imagen_consola;
        public int precio;
        public string descripcion;
        public int codigo_Articulo;
        public int tipo_Articulo;
        public int id_Departamento;

        public Articulos(int opc, string nombre_consola, byte[] imagen_consola, int precio, string descripcion,int codigo_Articulo, int tipo_Articulo,int id_Departamento)
        {
            this.opc = opc;
            this.nombre_consola = nombre_consola;
            this.imagen_consola = imagen_consola;
            this.precio = precio;
            this.descripcion = descripcion;
            this.codigo_Articulo = codigo_Articulo;
            this.tipo_Articulo = tipo_Articulo;
            this.id_Departamento = id_Departamento;
        }
        public Articulos()
        {
            this.opc = 0;
            this.nombre_consola = "";
            //this.imagen_consola = 0;
            this.precio = 0;
            this.descripcion = "";
            this.Codigo_Articulo = 0;
            this.tipo_Articulo = 0;
            this.id_Departamento = 0;
        }

        public int Opc { get => opc; set => opc = value; }
        public string Nombre_consola { get => nombre_consola; set => nombre_consola = value; }
        public byte[] Imagen_consola { get => imagen_consola; set => imagen_consola = value; }
        public int Precio { get => precio; set => precio = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public int Tipo_Articulo { get => tipo_Articulo; set => tipo_Articulo = value; }
        public int Id_Departamento { get => id_Departamento; set => id_Departamento = value; }
        public int Codigo_Articulo { get => codigo_Articulo; set => codigo_Articulo = value; }
    }
}
