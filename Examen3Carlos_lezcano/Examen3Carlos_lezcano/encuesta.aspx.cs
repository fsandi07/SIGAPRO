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
    public partial class encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(Server.MapPath(".") + "/visitas.txt");
            this.lblmostrarencuesta.Text = arch.ReadToEnd();
            arch.Close();

            

            Encuesta.Nencuesta.ToString();
        }

        protected void btnreporte_Click(object sender, EventArgs e)
        {
            // al precionar ver reporte se ejecuta la lectura de los txt para los contadores de los que tienen carro o no y para leer el contador que lleva los numero de encuesta 
            //para luego mostrarse en los texbox 
            // que este cason tiene la propiedad de solo lectura el usuario no los puede modificar.
            StreamReader arch1 = new StreamReader(Server.MapPath(".") + "/carrono.txt");
            this.txtcarrono.Text = arch1.ReadToEnd();
            arch1.Close();
            //////////////////////////////////////////////////////////////////////////////////////////////
            StreamReader arch2 = new StreamReader(Server.MapPath(".") + "/carrosi.txt");
            this.txtcarrossi.Text = arch2.ReadToEnd();
            arch2.Close();
            /////////////////////////////////////////////////////////////////////////////////
            StreamReader arch3 = new StreamReader(Server.MapPath(".") + "/contador.txt");
            this.txtencuestas.Text = arch3.ReadToEnd();
            arch3.Close();

        }

        protected void btnregreso_Click(object sender, EventArgs e)
        {
            Response.Redirect("principal.aspx");
        }
    }
}