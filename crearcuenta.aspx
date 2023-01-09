<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearcuenta.aspx.cs" Inherits="canchas.crearcuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" />

    <title>CREAR USUARIO</title>
  
</head>
<body class="bg-light">
    <div class="wrapper">
        <div class="formcontent">
            <form id="formulario_login" runat="server">

                <div class ="form-control">
                    <div class="row">
                        <asp:Label class="h2" ID="LbCuenta" runat="server" Text="Crear nueva cuenta"></asp:Label>
                    </div>

                    <div>
                        <asp:Label ID="lbrut" runat="server" Text="Rut"></asp:Label>
                        <asp:TextBox ID="txtid_rut" type="number" CssClass="form-control" runat="server" placeholder="RUT SIN PUNTOS NI GUION"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="lbusuario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="txtusuario" CssClass="form-control" runat="server" placeholder="NOMBRE DE USUARIO"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="lbpass" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="txtpass" TextMode="Password" runat="server" CssClass="form-control" placeholder="CONTRASEÑA"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="lbnombre" runat="server" Text="Nombre"></asp:Label>
                        <asp:TextBox ID="txtnombre" CssClass="form-control" runat="server" placeholder="NOMBRE"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="lbtelefono" runat="server" Text="Telefono"></asp:Label>
                        <asp:TextBox ID="txttelefono" type="number"  CssClass="form-control" runat="server" placeholder="TELEFONO"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="Lbcorreo" runat="server" Text="Correo"></asp:Label>
                        <asp:TextBox ID="txtcorreo" CssClass="form-control" runat="server" placeholder="CORREO"></asp:TextBox>
                    </div>

                    
                    <br />
                    <div class="row">
                        <asp:Label runat="server"  ID="lblError" CssClass="alert-danger" ></asp:Label>
                        <asp:Label runat="server"  ID="lbCuentacreada" CssClass="alert-success" ></asp:Label>
                    </div>
                    <br />

                     <div class="row">
                        <asp:Button ID="btncrear" CssClass="btn btn-primary btn-dark" runat="server" Text="Crear Cuenta" OnClick="btncrear_Click" />
                        
                         
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="btnvolver" CssClass="btn btn-primary btn-dark" runat="server" Text="Volver" OnClick="btnvolver_Click" />
                        
                         
                    </div>
           
                </div>
            </form>

        </div>
    </div>
    
</body>
</html>