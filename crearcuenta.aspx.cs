using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace canchas
{
    public partial class crearcuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_AgregarUsuario", sqlconectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@id_rut", SqlDbType.VarChar, 50).Value = txtid_rut.Text;
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 50).Value = txtusuario.Text;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = txtpass.Text;
            cmd.Parameters.Add("@nombre", SqlDbType.VarChar, 50).Value = txtnombre.Text;
            cmd.Parameters.Add("@telefono", SqlDbType.Int, 50).Value = txttelefono.Text;
            cmd.Parameters.Add("@correo", SqlDbType.VarChar, 50).Value = txtcorreo.Text;
            if (txtid_rut.Text.Equals("") ||
                txtusuario.Text.Equals("") ||
                txtpass.Text.Equals("") ||
                txtnombre.Text.Equals("") ||
                txttelefono.Text.Equals("") ||
                txtcorreo.Text.Equals(""))
            {
               
                lblError.Text = "INGRESE LOS DATOS CORRECTAMENTE";
                txtid_rut.Text = "";
                txtusuario.Text = "";
                txtpass.Text = "";
                txtnombre.Text = "";
                txttelefono.Text = "";
                txtcorreo.Text = "";

            }
            else
            {
                SqlDataReader dr = cmd.ExecuteReader();   
                lbCuentacreada.Text = "CUENTA CREADA CON EXITO";
                txtid_rut.Text = "";
                txtusuario.Text = "";
                txtpass.Text = "";
                txtnombre.Text = "";
                txttelefono.Text = "";
                txtcorreo.Text = "";

            }
            
           
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}