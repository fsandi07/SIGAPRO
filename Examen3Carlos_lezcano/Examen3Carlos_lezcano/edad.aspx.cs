using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Examen3.Controlador;
using System.Data;

namespace Examen3Carlos_lezcano
{
    public partial class edad : System.Web.UI.Page
    {
        private Encuesta encu;
        private EncuestaHelper encuH;
        protected void Page_Load(object sender, EventArgs e)
        {
            // aqui se convierte la variable de sseion a datetime y despues a entero para poder realizar el calculo de la edad 
            DateTime fecha = DateTime.Parse(Request.QueryString["fnacimineto"].ToString());// aqui traesmos la variable de sseion y la parseamos
            int actual = DateTime.Today.AddTicks(-fecha.Ticks).Year - 1;// se realiza la conversion de la fecha y se aplica la resta del ano actual 
            this.txtedad.Text = actual.ToString();
        }

        protected void btnsigueinte_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
               


                try
                {
                    //this.encu = new Encuesta();
                    //this.encu.Edad = int.Parse(this.txtedad.Text);
                    //this.encu.Nencu = Encuesta.Nencuesta;
                    // this.encu.Opc = 1; ;
                    //this.encuH = new EncuestaHelper(encu);
                    //this.encuH.InsertarEncuestas();
                    ////////////////////////////////////////////////////////////
                    ///
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("Edad:" + this.txtedad.Text);
                    arch.WriteLine("<br>");
                    arch.Close();
                    Encuesta.setcaptura3(int.Parse(this.txtedad.Text));
                    Response.Redirect("correo.aspx");
                }
                catch (Exception)
                {

                    throw;
                }
              
            }

        }
    }
}