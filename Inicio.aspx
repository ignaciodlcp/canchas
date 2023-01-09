<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="canchas.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" />

    <title>Inicio de Sesion</title>
</head>
<body class="bg-light">
    <div class="wrapper">
        <div class="formcontent">

            <form id="formulario_login" runat="server">
                <div class ="form-control">
                    <div class="row">
                        <asp:Label class="h2" ID="lbBienvenida" runat="server" Text="Bienvenido/a a las Canchas"></asp:Label>
                    </div>

                    <div>
                        <asp:Label ID="lbusuario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="txtusuario" CssClass="form-control" runat="server" placeholder="NOMBRE DE USUARIO"></asp:TextBox>
                    </div>
                    <h1>mario klo funciona porfavor
                        si no te voy a sacar la ctm tay vio
                    </h1>


                    <div>
                        <asp:Label ID="lbpass" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="txtpass" TextMode="Password" runat="server" CssClass="form-control" placeholder="CONTRASEÑA"></asp:TextBox>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label runat="server"  ID="lblError" CssClass="alert-danger" ></asp:Label>
                    </div>
                    <br />

                    <div class="row">
                        <asp:Button ID="btningresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="btningresar_Click" />
                    </div>
                    <br />

                    <div class="row text-center">
                        <asp:HyperLink ID="crearcuenta" runat="server"><a href="crearcuenta.aspx">CREAR CUENTA</a></asp:HyperLink>
                    </div>

                </div>
            </form>

        </div>
    </div>
    
</body>
</html>
