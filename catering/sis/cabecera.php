<?php
    include ('conexion.php');
    session_start();
?>
<script type="text/javascript" src="este.js"></script> 
<link rel="stylesheet" href="css/estilos.css">

    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    
    <script src="bootstrap/js/jquery-3.6.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> -->

    <title>Servicio de Almuerzos</title>
</head>


    
<nav class="navbar navbar-expand-lg navbar-dark " style="color:white; background: rgb(0,51,26);
background: linear-gradient(357deg, rgba(0,51,26,1) 0%, rgba(0,102,51,1) 50%, rgba(0,25,13,1) 100%); " >
      
      <a class="navbar-brand"><img src="imagenes/logo3.png" height="60px" width="140px;" /></a>
         <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div id="my-nav" class="collapse navbar-collapse">
             <ul class="navbar-nav mr-auto">
                 <li class="nav-item active">
                     <a class="nav-link" href="principal.php"><i class="fas fa-home"></i> Inicio <span class="sr-only">(current)</span></a>
                 </li>
                 <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Empresa
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="listarEmpresas.php">Administrar</a>
                        <a class="dropdown-item" href="nuevoEmpresa.php">Nuevo</a>
                    </div>
                    </li>
                    <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Clientes
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="listarClientes.php">Administrar</a>
                        <a class="dropdown-item" href="nuevoCliente.php">Nuevo</a>
                        
                        
                    </div>
                    </li>
                 <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Servicios
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="desayunos.php">Desayuno</a>
                        <a class="dropdown-item" href="almuerzos.php">Almuerzo</a>
                        <a class="dropdown-item" href="meriendas.php">Merienda</a>
                        <?php
                            $query="select * from configuracion where nombre='internet' and descripcion='si'";
                            $enviarC=mysqli_query($db,$query);
                            $ver=mysqli_num_rows($enviarC);
                            if ($ver>0) {
                                echo'<a class="dropdown-item" href="almuerzosInternet.php">Almuerzo pedidos (internet)</a>';
                            }

                        ?>
                        
                    </div>
                    </li>
                    <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Cafeteria
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="../../listar.php">Productos</a>
                        <a class="dropdown-item" href="../../listarClientes.php">Clientes</a>
                        <a class="dropdown-item" href="../../vender.php">Vender</a>
                        <a class="dropdown-item" href="../../ventas.php">Ventas</a>
                        <a class="dropdown-item" href="../../CierreCaja.php">Cierre de Caja</a>
                        <a class="dropdown-item" href="../../reportes.php">Reportes Excel</a>
                        <a class="dropdown-item" href="../../reporteVentas.php">Reportes PDF</a>
                        
                    </div>
                    </li>
                    <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-address-book"></i> Reportes
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="consumos.php">Reporte Diario</a>
                        <a class="dropdown-item" href="extras.php">Reporte Extras</a>     
                        <a class="dropdown-item" href="consumosGlobales.php">Reporte Global</a>     
                    </div>
                    </li>
                    <li class="nav-item active">
                     <a class="nav-link" href="tirilla.php"><i class="fas fa-home"></i> Tirilla <span class="sr-only">(current)</span></a>
                 </li>
                    <li class="nav-item active">
                     <a class="nav-link" href="salir.php"><i class="fas fa-home"></i> Salir <span class="sr-only">(current)</span></a>
                 </li>
                  
                   
             </ul>
         </div>
</nav>