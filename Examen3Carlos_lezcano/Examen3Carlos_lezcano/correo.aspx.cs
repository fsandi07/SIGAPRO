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
    public partial class correo : System.Web.UI.Page
    {
        private Encuesta encu;
        private EncuestaHelper encuH;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsiguiente_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                

                try
                {
                    //this.encu = new Encuesta();
                    //this.encu.Correo = this.txtcorreo.Text;
                    //this.encu.Nencu = Encuesta.Nencuesta;
                    //this.encu.Opc = 1;
                    //this.encuH = new EncuestaHelper(encu);
                    //this.encuH.InsertarEncuestas();
                    ///////////////////////////////////////////////////////
                    ///
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("Correo:" + this.txtcorreo.Text);
                    arch.WriteLine("<br>");
                    arch.Close();
                    Encuesta.setcaptura4(this.txtcorreo.Text);
                    Response.Redirect("carro.aspx");

                }
                catch (Exception)
                {

                    throw;
                }
               
            }

        }
    }
}