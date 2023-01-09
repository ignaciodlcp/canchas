<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="canchas.cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" />
    <title>CLIENTE</title>
</head>
<body>
    <form id="formulario_cliente" class="form-control" runat="server">
        <div>
            <asp:Label ID="lbBienvenida" runat="server" Text="" CssClass="h2"></asp:Label>
        </div>
        <br />
        <div>
            
            <asp:Button ID="btnarrendar"  style="position: absolute; left:1%" runat="server" Text="Arrendar" CssClass="btn btn-dark" OnClick="btnarrendar_Click" />
            <asp:Button ID="btnperfil"  style="position: absolute; left:10%"  runat="server" Text="Perfil" CssClass="btn btn-dark" OnClick="btnperfil_Click" Width="74px" /> 
            <asp:Button ID="btnCerrar" style="position: absolute; right:10%"  runat="server" Text="Cerrar Sesion" CssClass="btn btn-dark" OnClick="btnCerrar_Click" />
            
        </div>
        <br />
        <div>
            
        </div>
      <br />
         <div>
            <asp:Button ID="btnfutbol1"    runat="server" Text="CANCHA FUTBOL 1°" CssClass="btn btn-dark" OnClick="btnfutbol1_Click" Width="228px"/>
        </div>
    <br />
         <div>
            <asp:Button ID="btnfutbol2"   runat="server" Text="CANCHA FUTBOL 2° " CssClass="btn btn-dark" OnClick="btnfutbol2_Click"/>
        </div>
    <br />
        <div>
            <asp:Button ID="btnpadel1"   runat="server" Text="CANCHA PADEL 1°" CssClass="btn btn-dark" OnClick="btnpadel1_Click" Width="227px"/>
        </div>
    <br />
        <div>
            <asp:Button ID="btnpadel2"   runat="server" Text="CANCHA PADEL 2°" CssClass="btn btn-dark" OnClick="btnpadel2_Click" Width="226px"/>
        </div>
    <br />
    </form>

    
        

   

</body>
</html>
