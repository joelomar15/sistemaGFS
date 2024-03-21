<?php 
    include('conexion.php');
    
 
?>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<link rel="stylesheet" href="css/estilos.css">

    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="./css/fontawesome-all.min.css">
    
    <link rel="stylesheet" href="catering/sis/bootstrap/css/bootstrap.min.css">
    
    <script src="catering/sis/bootstrap/js/jquery-3.6.1.min.js"></script>
    <script src="catering/sis/bootstrap/js/bootstrap.min.js"></script>
<nav class="navbar navbar-expand-lg navbar-light "style="background-color: #62e758;" >
      
      <a class="navbar-brand"><img src="logo2.png" height="90px" width="180px;" /></a>
         <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div id="my-nav" class="collapse navbar-collapse">
             <ul class="navbar-nav mr-auto">
                 <li class="nav-item active">
                     <a class="nav-link" href="catering/sis/principal.php"><i class="fas fa-home"></i> Inicio <span class="sr-only">(current)</span></a>
                 </li>
                 <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Empresa
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="catering/sis/listarEmpresas.php">Administrar</a>
                        <a class="dropdown-item" href="catering/sis/nuevoEmpresa.php">Nuevo</a>
                    </div>
                    </li>
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Clientes
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="catering/sis/listarClientes.php">Administrar</a>
                        <a class="dropdown-item" href="catering/sis/nuevoCliente.php">Nuevo</a>
                        
                        
                    </div>
                    </li>
                 <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Servicios
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="catering/sis/desayunos.php">Desayuno</a>
                        <a class="dropdown-item" href="catering/sis/almuerzos.php">Almuerzo</a>
                        <a class="dropdown-item" href="catering/sis/meriendas.php">Merienda</a>
                        
                    </div>
                    </li>
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Cafeteria
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="listar.php">Productos</a>
                        <a class="dropdown-item" href="listarClientes.php">Clientes</a>
                        <a class="dropdown-item" href="vender.php">Vender</a>
                        <a class="dropdown-item" href="ventas.php">Ventas</a>
                        <a class="dropdown-item" href="reportes.php">Reportes Excel</a>
                        <a class="dropdown-item" href="reporteVentas.php">Reportes PDF</a>
                        
                    </div>
                    </li>
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-address-book"></i> Reportes
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="catering/sis/consumos.php">Reporte Diario</a>    
                    </div>
                    </li>
                    <li class="nav-item active">
                     <a class="nav-link" href="catering/sis/salir.php"><i class="fas fa-home"></i> Salir <span class="sr-only">(current)</span></a>
                 </li>
                   
             </ul>
         </div>
</nav>

</body>
</html>
<?php
    
        $query="SELECT * FROM clientes c JOIN ventas v where v.id_cliente=c.id ";
   
    
//echo $query;
    $enviar=mysqli_query($db,$query);
    $ver=mysqli_fetch_array($enviar);
    echo "<center><h1>Registros de Ventas</h1></center>";
    echo "<div class=container><center><table class=table >
        <thead class=thead-dark>
    <tr>
      <th scope=col>Cedula</th>
      <th scope=col>Nombre</th>
      <th scope=col>Fecha</th>
      <th scope=col>Total Venta</th>
      <th scope=col>Accion</th>
      
      
    </tr>
  </thead>";
    do{
        $codigo=$ver['id'];
    $cedula=$ver['cedula'];
    $nombre=$ver['nombre'];
    $fecha=$ver['fecha'];
    $total=$ver['total'];

    echo '
        <tbody>
        <tr>
        <td>'.$cedula.'</td>
        <td>'.$nombre.'</td>
        <td>'.$fecha.'</td>
        <td>'.$total.'</td>
        <td><a href="exportarPDF.php?id=$codigo" class="btn btn-sm btn-success" style="background-color:#f60b07">Exportar PDF</a></td>
        </tr>

    ';
    }while ($ver=mysqli_fetch_array($enviar)); 
        echo '</tbody></table>
        
        </center></div>';
?>