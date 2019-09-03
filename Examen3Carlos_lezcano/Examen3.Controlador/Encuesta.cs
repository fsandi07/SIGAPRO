using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace Examen3.Controlador
{
   public  class Encuesta
    {
        /// <summary>

        // estos son para los procesos almacenados del insert
        public int nencu;
        public int opc;
        public string nombre;
        public string apellido;
        public DateTime fechanacimiento;
        public int edad;
        public string correo;
        public string carro;
        public byte[] doc;

        // contadores para los que poseen o no carros, tienen que ser globales puesto que se muestran en un reporte 

        /// </summary>
        // este es para usarlo global
        public static int nencuesta;
        public static DateTime fecha;
        public static int edad2;
        public static string correo2;
        public static string carro2;
        public static string nombre2;
        public static string apellido2;
        //variables globales para los contadores de las personas que tiene carro
        public static int contador1;
        public static int cotador2;
        public Encuesta(int nencu, int opc, string nombre, string apellido, DateTime fechanacimiento, int edad, string correo, string carro, byte[] doc)
        {
            this.nencu = nencu;
            this.opc = opc;
            this.nombre = nombre;
            this.apellido = apellido;
            this.fechanacimiento = fechanacimiento;
            this.edad = edad;
            this.correo = correo;
            this.carro = carro;
            this.doc = doc;
        }
        public Encuesta()
        {
            this.nencu = 0;
            this.opc = 0;
            this.nombre = "";
            this.apellido = "";
            this.fechanacimiento = DateTime.Today;
            this.edad = 0;
            this.correo = "";
            this.carro = "";
           
          
        }

        public int Nencu { get => nencu; set => nencu = value; }
        public int Opc { get => opc; set => opc = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public DateTime Fechanacimiento { get => fechanacimiento; set => fechanacimiento = value; }
        public int Edad { get => edad; set => edad = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Carro { get => carro; set => carro = value; }
        // estas variables seran mis globales 
        public static int Nencuesta { get => nencuesta; set => nencuesta = value; }
        public static DateTime Fecha { get => fecha; set => fecha = value; }
        public static int Edad2 { get => edad2; set => edad2 = value; }
        public static string Correo2 { get => correo2; set => correo2 = value; }
        public static string Carro2 { get => carro2; set => carro2 = value; }
        public static string Nombre2 { get => nombre2; set => nombre2 = value; }
        public static string Apellido2 { get => apellido2; set => apellido2 = value; }
        public static int Contador1 { get => contador1; set => contador1 = value; }
        public static int Cotador2 { get => cotador2; set => cotador2 = value; }
        public byte[] Doc { get => doc; set => doc = value; }

        public static void setcaptura(DateTime fecha)
        {
            Fecha = fecha;

        }
        public static void setcaptura2(int necuesta)
        {
            Nencuesta = necuesta;
        }
        public static void setcaptura3(int edad)
        {
            Edad2 = edad;
        }
        public static void setcaptura4(string correo)
        {
            Correo2 = correo;
        }
        public static void setcaptura5(string carro)
        {
            Carro2 = carro;
        }
        public static void setcaptura6(string nombre)
        {
            Nombre2 = nombre;
        }
        public static void setcaptura7(string apellido)
        {
            Apellido2 = apellido;
        }
        public static void setcaptura8(int carrosi)
        {
            Contador1 = carrosi;
        }
        public static void setcaptura9(int carrono)
        {
            Cotador2 = carrono;
        }


    }
}
