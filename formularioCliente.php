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
<?php
    include ('conexion.php');
    if (isset($_GET['enviar'])) {
		$nombre=$_REQUEST['nombre'];
		$cedula=$_REQUEST['cedula'];
		$empresa=$_REQUEST['empresa'];
		$direccion=$_REQUEST['direccion'];
		$correo=$_REQUEST['correo'];
		$clave=$_REQUEST['clave'];
		$query="insert into clientes values(0,'$empresa','$cedula','$nombre','$direccion','$correo','1','1','$clave','1')";
		$enviar=mysqli_query($db, $query);    
		if($enviar === TRUE){
			header("Location: ./listarClientes.php");
			exit;
		}
		else echo "Algo salió mal. Por favor verifica que la tabla exista";
		echo'<script>alert("Cliente Ingresado")</script>';
		}
?>

<div class="col-xs-12">
	<h1>Nuevo cliente</h1>
	<form id="login_form" class="form_class" method="get">
		<label for="cedula">Cédula:</label>
		<input class="form-control" name="cedula" required type="text" id="cedula" placeholder="Escribe la cédula">

		<label for="nombre">Nombre:</label>
		<input class="form-control" name="nombre" required type="text" id="nombre" placeholder="Escribe el Nombre">

		<label for="nombre">Direccion:</label>
		<input class="form-control" name="direccion" required type="text" id="direccion" placeholder="Escribe la Dirección">

		<label for="correo">Correo:</label>
		<input class="form-control" name="correo" required type="email" id="correo" placeholder="Escribe el Correo">

		<label for="correo">Empresa:</label>
		<select class="form-control" name="empresa">
                <?php 
					include('conexion.php');
                    $query1="select * from empresa";
                    $enviar1=mysqli_query($db,$query1);
                    $ver1=mysqli_fetch_array($enviar1);
                    do{
                        $id=$ver1['id'];
                        $nombre=$ver1['nombre'];
                        if ($ver1['id']==$id) {
                          echo '
                              <option value="'.$id.'" selected>'.$nombre.'</option>';
                        }else{
                          echo '
                              <option value="'.$id.'">'.$nombre.'</option>';
                        
                        }
                    }while ($ver1=mysqli_fetch_array($enviar1));
					
                ?>
        </select>

		<label for="clave">Password:</label>
		<input class="form-control" name="clave" required type="password" id="clave" placeholder="Escribe la Clave">

		<br><br><button class="submit_class" name="enviar" type="submit">Guardar</button>
	</form>
</div>
<?php include_once "pie.php" ?>