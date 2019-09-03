using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Examen3.Controlador;

namespace Examen3Carlos_lezcano
{
    public partial class carro : System.Web.UI.Page
    {

        private Encuesta encu;
        private EncuestaHelper encuH;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void btnsiguiente_Click(object sender, EventArgs e)
        {
           try
            {

                if (radiosi.Checked)
                {
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("carro?:" +"SI");
                    arch.WriteLine("<br>");
                    arch.Close();

                    if (File.Exists(Server.MapPath(".") + "/carrosi.txt"))
                    {
                        StreamReader arch1 = new StreamReader(Server.MapPath(".") + "/carrosi.txt");
                        string valor = arch1.ReadToEnd();
                        int contador = int.Parse(valor);
                        contador++;
                        arch1.Close();
                        StreamWriter arch2 = new StreamWriter(Server.MapPath(".") + "/carrosi.txt");
                        arch2.WriteLine(contador.ToString());
                        arch2.Close();
                        //Encuesta.setcaptura8(contador);
                    }
                    else
                    {
                        StreamWriter arch3 = new StreamWriter(Server.MapPath(".") + "/carrosi.txt");
                        arch3.WriteLine("1");
                        arch3.Close();

                    }
                    ///////////////////////////////////////////////////////////////////////
                    this.encu = new Encuesta();
                    this.encu.Carro = "SI";
                    this.encu.Nencu = Encuesta.Nencuesta;
                    this.encu.Nombre = Encuesta.Nombre2;
                    this.encu.Apellido = Encuesta.Apellido2;
                    this.encu.Fechanacimiento = Encuesta.Fecha;
                    this.encu.Edad = Encuesta.Edad2;
                    this.encu.Correo = Encuesta.Correo2;
                    this.encu.Opc = 1;
                    this.encuH = new EncuestaHelper(encu);
                    this.encuH.InsertarEncuestas();

                    Response.Redirect("encuesta.aspx");

                }
                else if (radiono.Checked)
                {
                    if (File.Exists(Server.MapPath(".") + "/carrono.txt"))
                    {
                        StreamReader arch1 = new StreamReader(Server.MapPath(".") + "/carrono.txt");
                        string valor = arch1.ReadToEnd();
                        int contador = int.Parse(valor);
                        contador++;
                        arch1.Close();
                        StreamWriter arch2 = new StreamWriter(Server.MapPath(".") + "/carrono.txt");
                        arch2.WriteLine(contador.ToString());
                        arch2.Close();
                        //Encuesta.setcaptura9(contador);
                    }
                    else
                    {
                        StreamWriter arch3 = new StreamWriter(Server.MapPath(".") + "/carrono.txt");
                        arch3.WriteLine("1");
                        arch3.Close();

                    }
                    ////////////////////////////////////////////////////////////////////////
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("carro?:" + "NO");
                    arch.WriteLine("<br>");
                    arch.Close();
                    ///////////////////////////////////////
                    this.encu = new Encuesta();
                    this.encu.Carro = "NO";
                    this.encu.Nencu = Encuesta.Nencuesta;
                    this.encu.Nombre = Encuesta.Nombre2;
                    this.encu.Apellido = Encuesta.Apellido2;
                    this.encu.Fechanacimiento = Encuesta.Fecha;
                    this.encu.Edad = Encuesta.Edad2;
                    this.encu.Correo = Encuesta.Correo2;
                    this.encu.Opc = 1;
                    this.encuH = new EncuestaHelper(encu);
                    this.encuH.InsertarEncuestas();
                    Response.Redirect("encuesta.aspx");

                }

            }
            catch (Exception)
            {

                throw;
            }

        }
    }
}