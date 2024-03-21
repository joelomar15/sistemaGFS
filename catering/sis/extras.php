<?php

include("conexion.php");
include('cabecera.php');
if (isset($_POST['enviar'])) {
    $usuario=$_POST['username'];
    $clave=$_POST['password'];
    $query="select * from empleados where empCedula='$usuario' and empClave='$clave'";
    $enviar=mysqli_query($db,$query);
    $ver=mysqli_num_rows($enviar);
    if($ver>0){
    $_SESSION['usuario']=$usuario;
    $query="select * from empleados where empCedula='$usuario' and empClave='$clave'";
    $enviarC=mysqli_query($db,$query);
    $ver=mysqli_fetch_array($enviarC);
    $_SESSION['nombre']=$ver['empNombre'];
    $_SESSION['cliId']=$ver['empId'];
    $_SESSION['total2']=0;
    header('location:principal.php');
}else{
    echo '<script> alert("Datos Erroneos")</script>';
}
}
?>

<body style="background-image: url(imagenes/fondor.jpg);">
<br>
<div class="container">
    
    <div class="d-flex justify-content-center h-100">
        <div class="card" style="height: 80%">
            <div class="card-header" style="width: 600px;">
                <br>
                <h3>Datos Reportes Extras</h3>
                <div class="d-flex justify-content-end social_icon">
                    
                </div>
            </div>
            <div class="card-body">
                <form method="post" name="frmUsuarios" action="tablaExtras.php" target="_BLANK">
                    <label>Fecha Inicio</label><br>
                    <div class="input-group form-group">

                        

                        <input type="date" class="form-control" placeholder="Usuario" name="fecha1" maxlength="30" required>
                        
                    </div>
                    <label>Fecha Fin</label><br>
                    <div class="input-group form-group">
                        
                       
                        <input type="date" class="form-control" placeholder="Password" name="fecha2" maxlength="30" id="password" required>
                    </div>
                    <label>Empresa</label><br>
                    <div class="input-group form-group">

                        
                        <select class="form-control" name="empresa">
                            <option value="0" selected>Todos</option>
                           <?php
                        $query2="select * from empresa";
                        $enviar2=mysqli_query($db,$query2);
                        $ver2=mysqli_fetch_array($enviar2);
                        do{
                        $id=$ver2['id'];
                        $nombre=$ver2['nombre'];
                        echo '
                            <option value="'.$id.'">'.$nombre.'</option>';
                       
                        
                        
                    }while ($ver2=mysqli_fetch_array($enviar2));

                ?>
                        </select>
                    </div>
                    <div class="form-group">
                        
                        <input type="submit" name="enviar" value="Generar" class="btn float-right login_btn" style="
background-color: #DCEB8E;
">
                    </div>
                </form>
            </div>
            
        </div>
        
    </div>
    
</div>


</body>

</html>
