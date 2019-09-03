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
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btningreso_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("nombre.aspx");
        }
    }
}