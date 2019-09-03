using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Examen3.Controlador;
using System.Xml;
using System.Xml.XPath;

namespace Examen3Carlos_lezcano
{
    public partial class nombre : System.Web.UI.Page
    {
        private Encuesta encu;
        private EncuestaHelper encuH;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (File.Exists(Server.MapPath(".") + "/contador.txt"))
                {
                    StreamReader arch1 = new StreamReader(Server.MapPath(".") + "/contador.txt");
                    string valor = arch1.ReadToEnd();
                    int contador = int.Parse(valor);
                    contador++;
                    arch1.Close();
                    StreamWriter arch2 = new StreamWriter(Server.MapPath(".") + "/contador.txt");
                    arch2.WriteLine(contador.ToString());
                    arch2.Close();
                    this.lblnumeroencuesta.Text = contador.ToString();
                    Encuesta.setcaptura2(contador);
                }
                else
                {
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/contador.txt");
                    arch.WriteLine("1");
                    arch.Close();
                    this.lblnumeroencuesta.Text = "1";
                }
            }
            catch (Exception)
            {

                throw;
            }
         
        }

        protected void btnsiguiente_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                   
                try
                {
                    

                     this.encu = new Encuesta();
                    this.encu.doc =Filexml.FileBytes;
                    //this.encu.Nencu = Encuesta.Nencuesta;
                    this.encu.Opc = 1;
                    this.encuH = new EncuestaHelper(encu);
                    this.encuH.enviarxml();
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("Nombre:" + this.txtnombre.Text);
                    arch.WriteLine("<br>");
                    arch.Close();
                    Encuesta.setcaptura6(this.txtnombre.Text);
                    Response.Redirect("apellido.aspx");
                }
                catch (Exception ex)
                {

                    this.txtnombre.Text = ex.Message;
                }
                 
            }
        }
    }
}