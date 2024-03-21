<?php
    include ('conexion.php');
    $id=$_GET['id'];
    $query="select * from clientes where id=$id";
    $enviar=mysqli_query($db,$query);
    $ver=mysqli_fetch_array($enviar);
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

<body>
    
<nav class="navbar navbar-expand-lg navbar-light "style="background-color: #62e758;" >
      
      <a class="navbar-brand"><img src="../../logo2.png" height="90px" width="180px;" /></a>
         <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
         </button>
         <div id="my-nav" class="collapse navbar-collapse">
             <ul class="navbar-nav mr-auto">
                 <li class="nav-item active">
                     <a class="nav-link" href="principal.php"><i class="fas fa-home"></i> Inicio <span class="sr-only">(current)</span></a>
                 </li>
                 <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Empresa
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="listarEmpresas.php">Administrar</a>
                        <a class="dropdown-item" href="nuevoEmpresa.php">Nuevo</a>
                    </div>
                    </li>
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Clientes
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="listarClientes.php">Administrar</a>
                        <a class="dropdown-item" href="nuevoCliente.php">Nuevo</a>
                        
                        
                    </div>
                    </li>
                 <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Servicios
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="desayunos.php">Desayuno</a>
                        <a class="dropdown-item" href="almuerzos.php">Almuerzo</a>
                        <a class="dropdown-item" href="meriendas.php">Merienda</a>
                        
                    </div>
                    </li>
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-school"></i> Cafeteria
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="../../listar.php">Productos</a>
                        <a class="dropdown-item" href="../../listarClientes.php">Clientes</a>
                        <a class="dropdown-item" href="../../vender.php">Vender</a>
                        <a class="dropdown-item" href="../../ventas.php">Ventas</a>
                        <a class="dropdown-item" href="../../reportes.php">Reportes Excel</a>
                        <a class="dropdown-item" href="../../reporteVentas.php">Reportes PDF</a>
                        
                    </div>
                    </li>
                    <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                       <i class="fas fa-address-book"></i> Reportes
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="consumos.php">Reporte Diario</a>    
                    </div>
                    </li>
                    <li class="nav-item active">
                     <a class="nav-link" href="salir.php"><i class="fas fa-home"></i> Salir <span class="sr-only">(current)</span></a>
                 </li>
                   
             </ul>
         </div>
</nav>
  <head></head>
      <center>
    <main>
        <b><h1 style="background-color: white;color:#156f15;">Editar Clientes</h1></b>
        <br>
        <form id="login_form" action="modificarCliente.php" class="form_class" method="post">

            <div class="form_div">
                <input type="hidden" name="id" id="id" value="<?php echo $ver['id'] ?>">
                <label>Nombre:</label>
                <input class="field_class" name="nombre" id="nombre" type="text" placeholder="Nombre" value="<?php echo $ver['nombre'] ?>" autofocus required>
                <label>Cedula:</label>
                <input id="pass" class="field_class" name="cedula" id="cedula" type="text" placeholder="Cédula" value="<?php echo $ver['cedula'] ?>" required>
                <label>Empresa:</label>
                <select class="form-control" name="empresa" id="empresa">
                <?php
                    $query2="select c.empId,e.nombre from clientes c,empresa e where c.empId=e.id";
                    $enviar2=mysqli_query($db,$query2);
                    $ver2=mysqli_fetch_array($enviar2);
                    do{
                        $id=$ver2['empId'];
                        $nombre=$ver2['nombre'];
                        if ($ver['empId']==$id) {
                        echo '
                            <option value="'.$id.'" selected>'.$nombre.'</option>';
                        }else{
                        echo '
                            <option value="'.$id.'">'.$nombre.'</option>';
                        
                        }
                    }while ($ver2=mysqli_fetch_array($enviar2));

                ?>
                </select>
                <label>Direccion:</label>
                <input id="text" class="field_class" name="direccion" id="direccion" type="text" value="<?php echo $ver['direccion'] ?>" placeholder="Ingrese la Direccion">
                <label>Estado:</label>
                <select name="estado" class="form-control">
                    <option value="1" selected>Activo</option>
                    <option value="0">Inactivo</option>
                </select>
                <!-- <input class="field_class" name="empresa" id="empresa" type="text" placeholder="Ingrese su empresa" required> -->
                <button class="submit_class" name="editar" id="enviar" type="submit">Editar</button>
                
            </div>
        </form>
        
    </main>
    </center>

</body>
<br><br>