using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace canchas
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void btningresar_Click(object sender, EventArgs e) {

            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlconectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlconectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@usuario",SqlDbType.VarChar,50).Value= txtusuario.Text;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar, 50).Value = txtpass.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (txtusuario.Text == "admin")
                {
                   
                    Response.Redirect("administrador.aspx");
                }
                else
                {
                    lblError.Text = "USUARIO Y/O CONTRASEÑA INCORRECTA";
                    txtusuario.Text = "";
                    txtpass.Text = "";
                }

                
                Response.Redirect("cliente.aspx");
            }
            else
            {
                lblError.Text = "USUARIO Y/O CONTRASEÑA INCORRECTA";
                txtusuario.Text = "";
                txtpass.Text = "";
            }
            cmd.Connection.Close();

        }
       
    }
}