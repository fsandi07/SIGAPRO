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
    public partial class Apellido : System.Web.UI.Page
    {
        private Encuesta encu;
        private EncuestaHelper encuH;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
             
                try
                {
                    //this.encu = new Encuesta();
                    //this.encu.Apellido = this.txtapellido.Text;
                    //this.encu.Nencu = Encuesta.Nencuesta;
                    //this.encu.Opc = 1;
                    //this.encuH = new EncuestaHelper(encu);
                    //this.encuH.InsertarEncuestas();
                    ////////////////////////////////////////////////////////////////////////////////////////
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("Apellido:" + this.txtapellido.Text);
                    arch.WriteLine("<br>");
                    Encuesta.setcaptura7(this.txtapellido.Text);
                    arch.Close();
                    Encuesta.setcaptura7(this.txtapellido.Text);
                    Response.Redirect("fecha.aspx");
                }
                catch (Exception)
                {

                    throw;
                }

            }

        }
    }
}