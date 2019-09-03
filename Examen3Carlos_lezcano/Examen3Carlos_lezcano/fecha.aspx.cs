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
    public partial class fecha : System.Web.UI.Page
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
                   
                    StreamWriter arch = new StreamWriter(Server.MapPath(".") + "/visitas.txt", true);
                    arch.WriteLine("Fecha de Nacimineto:" + this.txtfecha.Text);
                    arch.WriteLine("<br>");
                    arch.Close();
                    //////////////////////////////////////////////////////////////////
                    //this.encu = new Encuesta();
                    //this.encu.Fechanacimiento =DateTime.Parse(this.txtfecha.Text);
                    //this.encu.Nencu = Encuesta.Nencuesta;
                    //this.encu.Opc = 1;
                    //this.encuH = new EncuestaHelper(encu);
                    //this.encuH.InsertarEncuestas();
                    // con esta variable de ssion capturo la fecha 
                    {Session["fnacimineto"] = this.txtfecha.Text;}
                    Encuesta.setcaptura(DateTime.Parse(this.txtfecha.Text));
                    Response.Redirect("edad.aspx?fnacimineto=" + this.txtfecha.Text);
                }
                catch (Exception ex)
                {

                    this.lblerror.Text = ex.Message;
                }

             
            }


        }
    }
}