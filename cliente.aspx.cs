using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace canchas
{
    public partial class cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lbBienvenida.Text = "Bienvenido/a a las canchas ";
          
        }
        protected void btnarrendar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Inicio.aspx");
        }

        protected void btnperfil_Click(object sender, EventArgs e)
        {

        }   

        protected void btnfutbol1_Click(object sender, EventArgs e)
        {

        }

        protected void btnfutbol2_Click(object sender, EventArgs e)
        {

        }

        protected void btnpadel1_Click(object sender, EventArgs e)
        {

        }

        protected void btnpadel2_Click(object sender, EventArgs e)
        {

        }

       
    }
} 