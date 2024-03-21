<?php

include "ModeloCierreCaja.php";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $opcion = new CierreCaja();
    $opcion->insertarCierreCaja();
}
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
        <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #62e758;">

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
                            <a class="dropdown-item" href="CierreCaja.php">Cierre de Caja</a>
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
        <center>
            <div class="col-xs-12">
                <div class="center-block">
                    <h1>Nuevo Cierre de Caja</h1>
                    <form role="form" action="" method="post" enctype="multipart/form-data">
                        <div class="col-md-6">
                            <div class="box box-primary">
                                <!-- /.box-header -->
                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="fecha">Fecha del Cierre de Caja: <?php echo date("Y-m-d") ?> </label><br>
                                    </div>
                                    <div class="form-group">
                                        <label for="valorVenta">Total Valor de Ventas:</label>
                                        <div class="input-group">
                                            <input class="form-control" name="valorVenta" required type="number" id="valorVenta" placeholder="Ingrese el valor" min="0.00" step="0.01">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                </div>
                                <!-- /.box-body -->
                            </div>
                        </div>
                        <div class="form-group">
                            <center><button type="submit" value="upload" class="btn btn-success"><i class="fa fa-plus"></i>
                                    Registrar</button></center>
                        </div>
                    </form>
                </div>
            </div>
        </center>
        <?php include_once "pie.php" ?>
</body>

</html>